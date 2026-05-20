.class public Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;
.super Ljava/lang/Object;
.source "AssistantDragCallback.java"


# instance fields
.field private mAssistantCellInited:Z

.field private mCanDragToAssistant:Z

.field private mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mPickerDragToAssistantSupported:Z

.field protected mWasOverlayAttached:Z


# direct methods
.method public static synthetic $r8$lambda$5VBrr13BeU38bW26Ceh9IQTYq_c(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Lcom/miui/home/launcher/DragObject;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->lambda$onDragToAssistantEnd$5(Lcom/miui/home/launcher/DragObject;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$79kXsQA0ru0PtN3N4jnG2oqwo9k(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Landroid/view/MotionEvent;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->lambda$onDragToAssistantEnd$4(Landroid/view/MotionEvent;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$G-I6gMg8fRQ690CUempUPrE_684(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Lcom/miui/home/launcher/DragView;Landroid/view/MotionEvent;Lcom/miui/home/launcher/DragObject;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->lambda$onDragToAssistantStart$3(Lcom/miui/home/launcher/DragView;Landroid/view/MotionEvent;Lcom/miui/home/launcher/DragObject;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OTstK7E_ZLEgjM6fJxp5SuMW45o(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->lambda$createBitmapWithOutline$6(Landroid/view/View;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jJXOI9hxzIszXhjv_SRQtg2QOf8(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->lambda$onDragToAssistantScreen$0(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pBcXjk_RMroNJ_cHRrfNuRnrov4(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Lcom/miui/home/launcher/DragView;Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->lambda$onDragToAssistantStart$2(Lcom/miui/home/launcher/DragView;Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w6nYpiyCjo75RVoBFN7oUbbZC5M(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Lcom/miui/home/launcher/DragObject;Landroid/view/MotionEvent;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->lambda$onDragToAssistantScreen$1(Lcom/miui/home/launcher/DragObject;Landroid/view/MotionEvent;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/overlay/client/LauncherClient;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mWasOverlayAttached:Z

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mCanDragToAssistant:Z

    .line 73
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 74
    iput-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    .line 75
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mDragController:Lcom/miui/home/launcher/DragController;

    return-void
.end method

.method private createBitmapWithOutline(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    .line 384
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 386
    instance-of p0, p1, Lcom/miui/home/launcher/DragView;

    if-eqz p0, :cond_0

    const v0, 0x7f0a0156

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 387
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 389
    check-cast p1, Lcom/miui/home/launcher/DragView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object p1

    .line 390
    :cond_1
    instance-of p0, p1, Lcom/miui/home/launcher/HostViewContainer;

    if-eqz p0, :cond_2

    .line 391
    check-cast p1, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {p1}, Lcom/miui/home/launcher/HostViewContainer;->getWidgetContainer()Landroid/view/View;

    move-result-object p1

    .line 394
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    .line 395
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    .line 398
    new-instance v2, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0, v1, v2}, Lcom/miui/launcher/utils/BitmapRenderer;->createHardwareBitmapWithAcceleratedCanvas(IILandroid/graphics/Outline;Lcom/miui/launcher/utils/BitmapRenderer$Renderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 406
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetPaddingTop()I

    move-result p1

    const/4 v0, 0x0

    .line 407
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-static {p0, v0, p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private isDragObjectCanNotToAssistant(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    .line 148
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 p1, 0x17

    if-ne p0, p1, :cond_0

    sget-object p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryUtils;->INSTANCE:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryUtils;

    const-string p1, "com.miui.personalassistant"

    .line 149
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryUtils;->isPASupportServiceDelivery(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$createBitmapWithOutline$6(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 1

    .line 399
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 400
    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 401
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private synthetic lambda$onDragToAssistantEnd$4(Landroid/view/MotionEvent;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    const-string p2, "AssistantDragCallback"

    const-string v0, "onDragToAssistantEnd: callOverlay Method.METHOD_DRAG_END_WITH_RESULT"

    .line 322
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 324
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const-string v1, "drag_event"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 325
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    const-string p1, "drag_end_with_result"

    const-string v1, ""

    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->callOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    const-string v1, "drop_result"

    .line 326
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 327
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDragToAssistantEnd: Method.METHOD_DRAG_END_WITH_RESULT resultSuccess = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onDragToAssistantEnd$5(Lcom/miui/home/launcher/DragObject;Ljava/lang/Boolean;)V
    .locals 0

    .line 330
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 331
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 333
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    .line 335
    :cond_0
    instance-of p2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz p2, :cond_1

    .line 336
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->removeAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    goto :goto_0

    .line 337
    :cond_1
    instance-of p2, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz p2, :cond_2

    .line 338
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->removeMaMl(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    goto :goto_0

    .line 339
    :cond_2
    instance-of p2, p1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    if-eqz p2, :cond_5

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->removeServiceDelivery(Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    .line 343
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onDragToAssistantEnd result false: drag object = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "AssistantDragCallback"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 346
    invoke-interface {p0, p1}, Lcom/miui/home/launcher/DragSource;->onDropBack(Lcom/miui/home/launcher/DragObject;)V

    goto :goto_0

    :cond_4
    const-string p0, "onDragToAssistantEnd result false but drag source is null"

    .line 348
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method

.method private synthetic lambda$onDragToAssistantScreen$0(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .line 131
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    const-string p1, "check_cell_initialized"

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/launcher/overlay/client/LauncherClient;->callOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const-string v0, "cell_initialized"

    .line 132
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onDragToAssistantScreen$1(Lcom/miui/home/launcher/DragObject;Landroid/view/MotionEvent;Ljava/lang/Boolean;)V
    .locals 0

    .line 134
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mCanDragToAssistant:Z

    if-eqz p3, :cond_0

    .line 135
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const p1, 0x7f100511

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 138
    iput-boolean p3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mAssistantCellInited:Z

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->onDragToAssistantStart(Lcom/miui/home/launcher/DragObject;Landroid/view/MotionEvent;)V

    return-void
.end method

.method private synthetic lambda$onDragToAssistantStart$2(Lcom/miui/home/launcher/DragView;Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 0

    .line 176
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->createBitmapWithOutline(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onDragToAssistantStart$3(Lcom/miui/home/launcher/DragView;Landroid/view/MotionEvent;Lcom/miui/home/launcher/DragObject;Landroid/graphics/Bitmap;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    if-eqz v2, :cond_c

    .line 177
    iget-object v3, v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 180
    :cond_0
    iget-object v3, v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/DragController;->setDraggingToAssistant(Z)V

    .line 181
    iget-object v3, v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    invoke-virtual {v3, v4}, Lcom/miui/launcher/overlay/client/LauncherClient;->showOverlay(I)V

    const/4 v3, 0x2

    new-array v5, v3, [I

    .line 183
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 185
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 186
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    const-string v8, "drag_event"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v7, "preview_content"

    .line 187
    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v7, 0x0

    aget v7, v5, v7

    const-string v8, "preview_left"

    .line 188
    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    aget v5, v5, v4

    const-string v7, "preview_top"

    .line 189
    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const-string v7, "preview_width"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const-string v5, "preview_height"

    invoke-virtual {v6, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    .line 196
    iget-boolean v5, v2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->supportBackgroundBlur:Z

    const-string/jumbo v7, "widget_support_blur"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 197
    instance-of v5, v2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    const-string v7, ""

    const-string/jumbo v8, "widget_refresh_min_interval"

    const-string/jumbo v9, "widget_refresh"

    const-string/jumbo v10, "widget_info"

    const-string/jumbo v11, "widget_app_version"

    const-string/jumbo v12, "widget_miui"

    const-string/jumbo v13, "widget_id"

    const-string/jumbo v14, "widget_type"

    if-eqz v5, :cond_1

    .line 198
    move-object v3, v2

    check-cast v3, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    .line 199
    invoke-virtual {v6, v14, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    invoke-virtual {v3}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getAppWidgetId()I

    move-result v5

    invoke-virtual {v6, v13, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    iget-object v5, v3, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v6, v10, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 202
    iget-boolean v5, v3, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    invoke-virtual {v6, v12, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 203
    iget-object v5, v3, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->miuiWidgetRefresh:Ljava/lang/String;

    invoke-virtual {v6, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget v3, v3, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->miuiWidgetRefreshMinInterval:I

    invoke-virtual {v6, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 p2, v7

    goto/16 :goto_1

    .line 205
    :cond_1
    instance-of v5, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    const-string v15, "preview_dark_url"

    const-string v3, "preview_light_url"

    const-string/jumbo v4, "widget_download_uri"

    const-string/jumbo v1, "widget_app_package"

    move-object/from16 p2, v7

    const-string/jumbo v7, "widget_app_name"

    if-eqz v5, :cond_5

    .line 206
    move-object v5, v2

    check-cast v5, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    move-object/from16 p4, v2

    const/4 v2, 0x1

    .line 207
    invoke-virtual {v6, v14, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    invoke-virtual {v5}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    const-string/jumbo v14, "widget_component_name"

    invoke-virtual {v6, v14, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 209
    invoke-virtual {v5}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v6, v13, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    iget-boolean v2, v5, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    invoke-virtual {v6, v12, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 211
    iget-object v2, v5, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->miuiWidgetRefresh:Ljava/lang/String;

    invoke-virtual {v6, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget v2, v5, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->miuiWidgetRefreshMinInterval:I

    invoke-virtual {v6, v8, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    iget-object v2, v5, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appName:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v2, v5, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget v1, v5, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersion:I

    invoke-virtual {v6, v11, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    iget-object v1, v5, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->downloadUri:Ljava/lang/String;

    invoke-virtual {v6, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v1, v5, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->previewUrlLight:Ljava/lang/String;

    invoke-virtual {v6, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v1, v5, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->previewUrlDark:Ljava/lang/String;

    invoke-virtual {v6, v15, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v1, v5, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appIconPreUrl:Ljava/lang/String;

    const-string/jumbo v2, "widget_app_icon_preview_url"

    invoke-virtual {v6, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v1, v5, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->downloadAppInfo:Ljava/lang/String;

    const-string/jumbo v2, "widget_download_app_info"

    invoke-virtual {v6, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v5}, Lcom/miui/home/launcher/ItemInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 223
    invoke-virtual {v5}, Lcom/miui/home/launcher/ItemInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "widget_title"

    invoke-virtual {v6, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_2
    iget-object v1, v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v1

    .line 227
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 228
    iget-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 229
    invoke-virtual {v6, v10, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_4
    move-object/from16 v2, p4

    goto/16 :goto_1

    .line 233
    :cond_5
    instance-of v5, v2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v5, :cond_9

    .line 234
    move-object v5, v2

    check-cast v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    const/4 v8, 0x2

    .line 235
    invoke-virtual {v6, v14, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    iget v8, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-virtual {v6, v13, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    iget-object v8, v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v9, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget v10, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-static {v8, v9, v10}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->grantPaResPermission(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "maml_uri"

    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 238
    iget-object v8, v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v9, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget v10, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-static {v8, v9, v10}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->grantPaRightsPermission(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_6

    const-string v9, "maml_rights_uri"

    .line 240
    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 242
    :cond_6
    iget-object v8, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlTag:Ljava/lang/String;

    const-string v9, "maml_tag"

    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v8, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlTagCategory:Ljava/lang/String;

    const-string v9, "maml_tag_category"

    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v8, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    const-string v9, "maml_product_id"

    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v8, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->type:Ljava/lang/String;

    const-string v9, "maml_type"

    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v8, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlDownloadUrl:Ljava/lang/String;

    const-string v9, "maml_download_url"

    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget v8, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    const-string v9, "maml_version"

    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 248
    iget-object v8, v5, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->previewUrlLight:Ljava/lang/String;

    invoke-virtual {v6, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v3, v5, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->previewUrlDark:Ljava/lang/String;

    invoke-virtual {v6, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v3, v5, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appName:Ljava/lang/String;

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v3, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appPackage:Ljava/lang/String;

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget v1, v5, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersion:I

    invoke-virtual {v6, v11, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    iget-object v1, v5, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->downloadUri:Ljava/lang/String;

    invoke-virtual {v6, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-wide v3, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->mtzSizeInKb:J

    const-string v1, "maml_mtz_file_size"

    invoke-virtual {v6, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 255
    invoke-virtual {v5}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v5}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_7
    move-object/from16 v1, p2

    :goto_0
    const-string v3, "maml_title"

    invoke-virtual {v6, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v1, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 257
    iget-object v1, v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v3, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    const/4 v4, 0x1

    .line 258
    invoke-static {v1, v3, v4}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->grantAssistantPermission(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "maml_config_uri"

    .line 257
    invoke-virtual {v6, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 260
    :cond_8
    iget-object v1, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->customEditUri:Ljava/lang/String;

    const-string v3, "maml_custom_edit_uri"

    invoke-virtual {v6, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget v1, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->flag:I

    const-string v3, "maml_flag"

    invoke-virtual {v6, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    iget-wide v3, v5, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->priceInCent:J

    const-string v1, "maml_price_cent"

    invoke-virtual {v6, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 263
    :cond_9
    instance-of v1, v2, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    if-eqz v1, :cond_a

    .line 264
    move-object v1, v2

    check-cast v1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;

    const/4 v3, 0x5

    .line 265
    invoke-virtual {v6, v14, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 266
    iget-boolean v3, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    invoke-virtual {v6, v12, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 267
    iget-object v1, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appName:Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_a
    :goto_1
    iget-object v1, v2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerID:Ljava/lang/String;

    const-string v3, "picker_id"

    invoke-virtual {v6, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const-string/jumbo v3, "widget_cell_x"

    invoke-virtual {v6, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 272
    iget v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const-string/jumbo v3, "widget_cell_y"

    invoke-virtual {v6, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 273
    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const-string/jumbo v3, "widget_span_x"

    invoke-virtual {v6, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 274
    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    const-string/jumbo v3, "widget_span_y"

    invoke-virtual {v6, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    iget v1, v2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->defaultSource:I

    const-string v3, "default_source"

    invoke-virtual {v6, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 276
    iget-object v1, v2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->extension:Ljava/lang/String;

    const-string v3, "component_item_info_expand"

    invoke-virtual {v6, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget v1, v2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersion:I

    invoke-virtual {v6, v11, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 278
    iget-object v1, v2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersionName:Ljava/lang/String;

    const-string/jumbo v3, "widget_package_version_name"

    invoke-virtual {v6, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget v1, v2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->originWidgetId:I

    if-lez v1, :cond_b

    const-string/jumbo v3, "widget_origin_id"

    .line 280
    invoke-virtual {v6, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 283
    :cond_b
    iget-object v1, v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    iget-wide v2, v2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    int-to-long v1, v1

    const-string v3, "home_screen_id"

    .line 284
    invoke-virtual {v6, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 285
    iget-object v0, v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    const-string v1, "drag_start"

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v6}, Lcom/miui/launcher/overlay/client/LauncherClient;->invokeOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 287
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragView;->setForceFadeOut()V

    const/4 v0, 0x4

    move-object/from16 v1, p1

    .line 288
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_c
    :goto_2
    return-void
.end method

.method private onDragToAssistantEnd(Lcom/miui/home/launcher/DragObject;Landroid/view/MotionEvent;)V
    .locals 3

    const-string v0, "AssistantDragCallback"

    const-string v1, "onDragToAssistantEnd: "

    .line 314
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->setDraggingToAssistant(Z)V

    .line 316
    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-nez v1, :cond_0

    const-string p0, "onDragToAssistantEnd: mClient == null"

    .line 317
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 321
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda5;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Landroid/view/MotionEvent;)V

    new-instance p2, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Lcom/miui/home/launcher/DragObject;)V

    const/4 p0, 0x0

    invoke-static {v0, p2, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private onDragToAssistantStart(Lcom/miui/home/launcher/DragObject;Landroid/view/MotionEvent;)V
    .locals 4

    .line 163
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/home/launcher/DragSource;->getContainerId()J

    move-result-wide v0

    const-wide/16 v2, -0x70

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 164
    iget-boolean p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mPickerDragToAssistantSupported:Z

    if-nez p1, :cond_0

    return-void

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    .line 168
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 169
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/launcher/overlay/client/LauncherClient;->showOverlay(I)V

    .line 170
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    const-string p1, "drag_from_home_picker"

    const-string p2, ""

    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/launcher/overlay/client/LauncherClient;->invokeOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 174
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mCanDragToAssistant:Z

    if-nez v0, :cond_2

    return-void

    .line 175
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    .line 176
    new-instance v2, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda6;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Lcom/miui/home/launcher/DragView;)V

    new-instance v3, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v0, p2, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Lcom/miui/home/launcher/DragView;Landroid/view/MotionEvent;Lcom/miui/home/launcher/DragObject;)V

    invoke-static {v2, v3, v1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private onDraggingToAssistant(Landroid/view/MotionEvent;)V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-nez v0, :cond_0

    return-void

    .line 302
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 303
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const-string v1, "drag_event"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 304
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    const-string p1, "dragging"

    const-string v1, ""

    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->invokeOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onDragToAssistantScreen(Landroid/view/MotionEvent;)V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 109
    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v1, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->isDragObjectCanNotToAssistant(Lcom/miui/home/launcher/DragObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "AssistantDragCallback"

    const-string p1, "onDragToAssistantScreen: Assistant is not support service delivery."

    .line 115
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 119
    :cond_1
    iget-boolean v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mWasOverlayAttached:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mCanDragToAssistant:Z

    if-eqz v1, :cond_2

    .line 120
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    invoke-virtual {p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->reconnect()V

    .line 121
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const p1, 0x7f100511

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 125
    :cond_2
    iget-boolean v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mAssistantCellInited:Z

    if-eqz v1, :cond_3

    .line 126
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->onDragToAssistantStart(Lcom/miui/home/launcher/DragObject;Landroid/view/MotionEvent;)V

    return-void

    .line 130
    :cond_3
    new-instance v1, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;)V

    new-instance v2, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Lcom/miui/home/launcher/DragObject;Landroid/view/MotionEvent;)V

    const/4 p0, 0x0

    invoke-static {v1, v2, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onHandleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragController;->isDraggingToAssistant()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 98
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->onDraggingToAssistant(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    if-ne v1, v3, :cond_2

    .line 100
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->onDragToAssistantEnd(Lcom/miui/home/launcher/DragObject;Landroid/view/MotionEvent;)V

    :cond_2
    :goto_0
    return v3

    :cond_3
    return v1
.end method

.method public onServiceStateChanged(Z)V
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mWasOverlayAttached:Z

    if-eq p1, v0, :cond_0

    .line 84
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mWasOverlayAttached:Z

    :cond_0
    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mAssistantCellInited:Z

    return-void
.end method

.method public setCanDragToAssistant(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mCanDragToAssistant:Z

    return-void
.end method

.method public updateOverlayState(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mPickerDragToAssistantSupported:Z

    return-void
.end method
