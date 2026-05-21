.class public abstract Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;
.super Ljava/lang/Object;
.source "LargeScreenMIUIWidgetDeviceAdapter.java"

# interfaces
.implements Lcom/miui/home/launcher/widget/device/MIUIWidgetDeviceAdapter;
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;
.implements Landroid/view/ViewTreeObserver$OnDrawListener;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"


# instance fields
.field protected mContext:Landroid/app/Activity;

.field private mOrientation:I

.field protected mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

.field protected mStopped:Z

.field protected mTouchedView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mOrientation:I

    return-void
.end method

.method private clearTouchView(Landroid/view/View;)V
    .locals 0

    .line 273
    instance-of p0, p1, Lcom/miui/home/launcher/HostViewContainer;

    if-eqz p0, :cond_0

    .line 274
    check-cast p1, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {p1}, Lcom/miui/home/launcher/HostViewContainer;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected attachPreviewLayer(Z)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    .line 151
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/launcher/HostViewContainer;

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    check-cast v0, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {v0}, Lcom/miui/home/launcher/HostViewContainer;->getCornerRadius()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->setPreviewCorner(F)V

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    if-eqz v1, :cond_2

    .line 155
    check-cast v0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->onAttachPreviewLayer()V

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->createPreviewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->drawPreview(Landroid/graphics/Bitmap;)V

    .line 158
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    check-cast v1, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    invoke-interface {v1}, Lcom/miui/miuiwidget/LargeScreenTouchTarget;->getBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->updatePreviewPosition(Landroid/graphics/Rect;)V

    .line 159
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 160
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->attach(Z)V

    const/4 p1, 0x1

    .line 163
    invoke-interface {p0, p1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetDeviceAdapter;->changeMIUIWidgetEditMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 165
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->exitEditMode()V

    const-string p0, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    const-string v0, "attachPreviewLayer error"

    .line 166
    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected attachPreviewLayerBgAdvance()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    .line 174
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->prepareBackGround()V

    return-void
.end method

.method protected createPreviewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2

    .line 241
    instance-of v0, p1, Lcom/miui/home/launcher/HostViewContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 242
    check-cast p1, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {p1}, Lcom/miui/home/launcher/HostViewContainer;->getHostView()Landroid/view/View;

    move-result-object p0

    .line 243
    invoke-static {p0, v1}, Lcom/miui/home/launcher/DragController;->createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 245
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-static {p0, v1}, Lcom/miui/home/launcher/DragController;->createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected detachPreviewLayer()V
    .locals 4

    const/4 v0, 0x0

    .line 190
    invoke-interface {p0, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetDeviceAdapter;->changeMIUIWidgetEditMode(Z)V

    .line 191
    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    instance-of v2, v1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    if-eqz v2, :cond_0

    .line 192
    check-cast v1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->onDetachPreviewLayer()V

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    if-nez v1, :cond_1

    return-void

    .line 197
    :cond_1
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 198
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detachPreviewLayer: compare orientation = ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v2, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget p0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mOrientation:I

    if-ne v1, p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->detach(Z)V

    :cond_3
    return-void
.end method

.method protected enterEditMode(Landroid/view/View;Landroid/content/Intent;I)V
    .locals 3

    .line 82
    move-object v0, p1

    check-cast v0, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/miuiwidget/LargeScreenTouchTarget;->getTouchViewOptions(Landroid/graphics/Rect;)Landroid/os/Bundle;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findTouchTarget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    const-string v2, "miuiWidgetId"

    .line 85
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 86
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->enterEditModeIndeed(Landroid/view/View;Landroid/content/Intent;I)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->clearTouchView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method protected enterEditModeIndeed(Landroid/view/View;Landroid/content/Intent;I)V
    .locals 1

    .line 131
    iput-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    .line 133
    invoke-virtual {p0, p1, p3}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->getOffsetWidgetScreenBound(Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object p1

    const-string v0, "miuiWidgetScreenBound"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "miuiWidgetScreenSide"

    .line 134
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 136
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mOrientation:I

    return-void
.end method

.method protected exitEditMode()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 180
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->detachPreviewLayer()V

    .line 181
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->clearTouchView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected getOffsetWidgetScreenBound(Landroid/view/View;I)Landroid/graphics/Rect;
    .locals 0

    .line 140
    check-cast p1, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    invoke-interface {p1}, Lcom/miui/miuiwidget/LargeScreenTouchTarget;->getBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/app/Activity;Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 46
    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 237
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->exitEditMode()V

    return-void
.end method

.method public onDraw()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    if-eqz v1, :cond_1

    .line 251
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->createPreviewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->drawPreview(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->drawPreview(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    const-string v1, "onResume"

    .line 224
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->exitEditMode()V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    const-string v1, "onStart"

    .line 214
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 215
    iput-boolean v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mStopped:Z

    .line 216
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->shouldDisableRecent()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "onStart disableRecent"

    .line 217
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 218
    invoke-interface {p0, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetDeviceAdapter;->changeMIUIWidgetEditMode(Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    const-string v1, "onStop reset"

    .line 230
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 231
    invoke-interface {p0, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetDeviceAdapter;->changeMIUIWidgetEditMode(Z)V

    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mStopped:Z

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    if-nez v0, :cond_0

    const-string v0, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    const-string v1, "onWallpaperColorChanged: generate previewLayer ."

    .line 266
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    .line 269
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->onWallpaperColorChanged()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->exitEditMode()V

    :cond_0
    return-void
.end method

.method protected shouldDisableRecent()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mStopped:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public startActivity(Landroid/view/View;Landroid/content/Intent;I)V
    .locals 2

    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 104
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "miuiWidgetId"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "[1-9][0-9]*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 113
    :cond_1
    instance-of v1, p1, Lcom/miui/home/launcher/HostViewContainer;

    if-nez v1, :cond_2

    .line 114
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->clearTouchView(Landroid/view/View;)V

    return-void

    .line 118
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {v1}, Lcom/miui/home/launcher/HostViewContainer;->getWidgetId()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 119
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->clearTouchView(Landroid/view/View;)V

    return-void

    .line 123
    :cond_3
    instance-of v0, p1, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    if-nez v0, :cond_4

    .line 124
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->clearTouchView(Landroid/view/View;)V

    return-void

    .line 127
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->enterEditModeIndeed(Landroid/view/View;Landroid/content/Intent;I)V

    return-void

    .line 106
    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->clearTouchView(Landroid/view/View;)V

    return-void

    .line 100
    :cond_6
    :goto_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->clearTouchView(Landroid/view/View;)V

    return-void
.end method

.method public startIntentSender(Landroid/view/View;Landroid/content/IntentSender;Landroid/content/Intent;I)V
    .locals 2

    const-string p2, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    instance-of v0, p1, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    if-nez v0, :cond_1

    const-string/jumbo p3, "widgetView is not a instanceof LargeScreenTouchTarget"

    .line 61
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->clearTouchView(Landroid/view/View;)V

    return-void

    .line 69
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    invoke-virtual {p3}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/miuiwidget/LargeScreenTouchTarget;->touchIn(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo p3, "touch target mismatch"

    .line 70
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->clearTouchView(Landroid/view/View;)V

    return-void

    .line 74
    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iput p2, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mOrientation:I

    .line 75
    invoke-virtual {p0, p1, p3, p4}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->enterEditMode(Landroid/view/View;Landroid/content/Intent;I)V

    return-void

    .line 55
    :cond_3
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "startIntentSender return : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " , "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->clearTouchView(Landroid/view/View;)V

    return-void
.end method
