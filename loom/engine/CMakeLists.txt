project(LoomCore)

include_directories(
    ${LOOM_INCLUDE_FOLDERS}
)

set (ENGINE_SRC

    allTests.cpp
            
    loom2d/l2dPoint.cpp
    loom2d/l2dMatrix.cpp
    loom2d/l2dDisplayObject.cpp
    loom2d/l2dDisplayObjectContainer.cpp
    loom2d/l2dSprite.cpp
    loom2d/l2dStage.cpp
    loom2d/l2dQuad.cpp
    loom2d/l2dImage.cpp
    loom2d/l2dQuadBatch.cpp
    loom2d/l2dScript.cpp
    
    bindings/loom/lmApplication.cpp
    bindings/loom/lmApplicationTasks.cpp
    bindings/loom/lmWebView.cpp
    bindings/loom/lmAdMob.cpp
    bindings/loom/lmHTTPRequest.cpp
    bindings/loom/lmStore.cpp
    bindings/loom/lmVideo.cpp
    bindings/loom/lmMobile.cpp
    bindings/loom/lmPackageLoom.cpp
    bindings/loom/gameframework/lmPropertyManager.cpp

    bindings/cocos2d/lmCocos2D.cpp
    
    tasks/tasks.c
    tasks/tasksTests.cpp

    cocos2dx/CCCamera.cpp
    cocos2dx/CCConfiguration.cpp
    cocos2dx/CCDirector.cpp
    cocos2dx/CCScheduler.cpp
    cocos2dx/base_nodes/CCNode.cpp
    cocos2dx/cocoa/CCAffineTransform.cpp
    cocos2dx/cocoa/CCArray.cpp
    cocos2dx/cocoa/CCAutoreleasePool.cpp
    cocos2dx/cocoa/CCDictionary.cpp
    cocos2dx/cocoa/CCGeometry.cpp
    cocos2dx/cocoa/CCNS.cpp
    cocos2dx/cocoa/CCObject.cpp
    cocos2dx/cocoa/CCSet.cpp
    cocos2dx/cocoa/CCString.cpp
    cocos2dx/cocoa/CCZone.cpp
    cocos2dx/cocos2d.cpp
    cocos2dx/keypad_dispatcher/CCKeypadDelegate.cpp
    cocos2dx/keypad_dispatcher/CCKeypadDispatcher.cpp
    cocos2dx/scrollwheel_dispatcher/CCScrollWheelDelegate.cpp
    cocos2dx/scrollwheel_dispatcher/CCScrollWheelDispatcher.cpp
    cocos2dx/layers_scenes_transitions_nodes/CCLayer.cpp
    cocos2dx/layers_scenes_transitions_nodes/CCScene.cpp
    cocos2dx/platform/CCEGLViewProtocol.cpp
    cocos2dx/platform/CCSAXParser.cpp
    cocos2dx/platform/CCThread.cpp
    cocos2dx/platform/platform.cpp
    cocos2dx/support/base64.cpp
    cocos2dx/support/CCNotificationCenter.cpp
    cocos2dx/support/CCPointExtension.cpp
    cocos2dx/support/CCProfiling.cpp
    cocos2dx/support/CCUserDefault.cpp
    cocos2dx/support/ccUtils.cpp
    cocos2dx/support/CCVertex.cpp
    cocos2dx/support/data_support/ccCArray.cpp
    cocos2dx/support/TransformUtils.cpp
    cocos2dx/support/zip_support/ioapi.cpp
    cocos2dx/support/zip_support/unzip.cpp
    cocos2dx/support/zip_support/ZipUtils.cpp
    cocos2dx/text_input_node/CCIMEDispatcher.cpp
    cocos2dx/touch_dispatcher/CCTouch.cpp
    cocos2dx/touch_dispatcher/CCTouchDispatcher.cpp
    cocos2dx/touch_dispatcher/CCTouchHandler.cpp
    
    cocos2dx/kazmath/src/aabb.c
    cocos2dx/kazmath/src/GL/mat4stack.c
    cocos2dx/kazmath/src/GL/matrix.c
    cocos2dx/kazmath/src/mat3.c
    cocos2dx/kazmath/src/mat4.c
    cocos2dx/kazmath/src/neon_matrix_impl.c
    cocos2dx/kazmath/src/plane.c
    cocos2dx/kazmath/src/quaternion.c
    cocos2dx/kazmath/src/ray2.c
    cocos2dx/kazmath/src/utility.c
    cocos2dx/kazmath/src/vec2.c
    cocos2dx/kazmath/src/vec3.c
    cocos2dx/kazmath/src/vec4.c
    
    cocos2dx/loom/CCLoomLog.cpp
    cocos2dx/loom/CCLoomCocos2D.cpp
    
    physics/lsPhysics.cpp
    physics/lsPhysicsPackage.cpp

    sound/lsSound.cpp
    sound/lsSoundPackage.cpp
)

if (APPLE)
    if(LOOM_BUILD_IOS EQUAL 1)
    set (ENGINE_SRC

        ${ENGINE_SRC}
        
        cocos2dx/platform/ios/AccelerometerDelegateWrapper.mm
        cocos2dx/platform/ios/CCAccelerometer.mm
        cocos2dx/platform/ios/CCApplication.mm
        cocos2dx/platform/ios/CCCommon.mm
        cocos2dx/platform/ios/CCDirectorCaller.mm
        cocos2dx/platform/ios/CCEGLView.mm
        cocos2dx/platform/ios/CCES2Renderer.mm
        cocos2dx/platform/ios/CCFileUtils.mm
        cocos2dx/platform/ios/CCImage.mm
        cocos2dx/platform/ios/CCThread.mm
        cocos2dx/platform/ios/EAGLView.mm
        
        cocos2dx/platform/ios/FontLabel/FontLabel.m
        cocos2dx/platform/ios/FontLabel/FontLabelStringDrawing.m
        cocos2dx/platform/ios/FontLabel/FontManager.m
        cocos2dx/platform/ios/FontLabel/ZAttributedString.m
        cocos2dx/platform/ios/FontLabel/ZFont.m
        
        cocos2dx/platform/ios/Simulation/AccelerometerSimulation.m
    )

    else()
        set (ENGINE_SRC
    
            ${ENGINE_SRC}

            cocos2dx/platform/mac/CCApplication.mm
            cocos2dx/platform/mac/CCCommon.mm
            cocos2dx/platform/mac/CCDirectorCaller.mm
            cocos2dx/platform/mac/CCEGLView.mm
            cocos2dx/platform/mac/CCEventDispatcher.mm
            cocos2dx/platform/mac/CCFileUtils.mm
            cocos2dx/platform/mac/CCThread.mm
            cocos2dx/platform/mac/CCWindow.m
            cocos2dx/platform/mac/EAGLView.mm
            
            )
    endif()

endif(APPLE)

if(ANDROID)
set (ENGINE_SRC

    ${ENGINE_SRC}

    cocos2dx/platform/android/CCAccelerometer.cpp
    cocos2dx/platform/android/CCApplication.cpp
    cocos2dx/platform/android/CCCommon.cpp
    cocos2dx/platform/android/CCEGLView.cpp
    cocos2dx/platform/android/CCFileUtils.cpp
    cocos2dx/platform/android/CCImage.cpp
    cocos2dx/platform/android/platformMain.cpp
    cocos2dx/platform/android/jni/IMEJni.cpp
    cocos2dx/platform/android/jni/JniHelper.cpp
    cocos2dx/platform/android/jni/MessageJni.cpp
    cocos2dx/platform/android/jni/SensorJni.cpp
    cocos2dx/platform/android/jni/SystemInfoJni.cpp
    cocos2dx/platform/android/jni/TouchesJni.cpp
        
)
endif(ANDROID)


if(LINUX)

set (ENGINE_SRC

    ${ENGINE_SRC}

    cocos2dx/platform/linux/CCApplication.cpp
    cocos2dx/platform/linux/CCCommon.cpp
    cocos2dx/platform/linux/CCEGLView.cpp
    cocos2dx/platform/linux/CCFileUtils.cpp
    cocos2dx/platform/linux/CCImage.cpp
    cocos2dx/platform/linux/CCStdC.cpp

)
endif(LINUX)


set (ENGINE_HDR
            
    bindings/loom/lmApplication.h
    cocos2dx/loom/CCLoomCocos2D.h
    
    tasks/tasks.h
    tasks/tasksInternal.h
)

if(MSVC)
set (ENGINE_SRC

    ${ENGINE_SRC}
    
    cocos2dx/platform/win32/CCAccelerometer.cpp
    cocos2dx/platform/win32/CCApplication.cpp
    cocos2dx/platform/win32/CCCommon.cpp
    cocos2dx/platform/win32/CCEGLView.cpp
    cocos2dx/platform/win32/CCFileUtils.cpp
    cocos2dx/platform/win32/CCImage.cpp
    cocos2dx/platform/win32/CCStdC.cpp
   
)
endif()


include_directories(
    vendor/zlib/include
)

add_library(${PROJECT_NAME} 
    ${ENGINE_HDR} ${ENGINE_SRC} 
)

if (ANDROID)    

    target_link_libraries(${PROJECT_NAME} -lz LoomVendor LoomCommon LoomScript LoomGraphics)
           
    if (LOOM_BUILD_JIT EQUAL 1)
    
        target_link_libraries(${PROJECT_NAME} 
        -L"${CMAKE_SOURCE_DIR}/build/luajit_android/lib"
        -lluajit-5.1
        )
    
    endif()       

endif(ANDROID)

if (LINUX)

    target_link_libraries(${PROJECT_NAME} -lz LoomVendor LoomCommon LoomScript LoomGraphics)

    if (LOOM_BUILD_JIT EQUAL 1)
    
        target_link_libraries(${PROJECT_NAME} 
        -L"${CMAKE_SOURCE_DIR}/build/luajit_x86/lib"
        -lluajit-5.1
        )
    
    endif()       


endif()
