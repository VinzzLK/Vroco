.class public Lcom/miui/home/launcher/maml/MaMlWidgetView;
.super Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;
.source "MaMlWidgetView.java"

# interfaces
.implements Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;
.implements Lcom/miui/home/launcher/HostViewContainer;
.implements Lcom/miui/home/launcher/gadget/ColorUpdatable;
.implements Lcom/miui/home/launcher/maml/ThemeSupport;
.implements Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;
.implements Lcom/miui/home/launcher/MIUIWidgetBasicInfo$UpgradeListener;
.implements Lcom/miui/miuiwidget/LargeScreenTouchTarget;
.implements Lcom/miui/home/launcher/WidgetSizeUpdater;
.implements Lcom/miui/home/launcher/DragController$VisualizeCalibration;
.implements Lcom/miui/miuiwidget/servicedelivery/appwidget/IMamlWidgetView;


# static fields
.field private static mHasTitle:Z


# instance fields
.field private mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

.field private mIsAutoLayoutAnimating:Z

.field private mIsEnableAutoLayoutAnimation:Z

.field private mSkipNextAutoLayoutAnimation:Z

.field private mTheme:Lcom/miui/home/launcher/maml/Theme;

.field private mThemeApplied:Z

.field private mTitleTextView:Lcom/miui/home/launcher/TitleTextView;


# direct methods
.method public static synthetic $r8$lambda$4GWsGafkvaFhZc8UZ085eU44SQQ(Ljava/util/function/Consumer;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->lambda$applyThemeIfNeed$6(Ljava/util/function/Consumer;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DqfY0euQTiLmHw9dAeYDzRIAMEA(Lcom/miui/home/launcher/maml/MaMlWidgetView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->lambda$requestUpdate$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$IjBbHo2sAakRbwvmL-xWqpiBTzQ(Lcom/miui/home/launcher/maml/MaMlWidgetView;Lcom/miui/home/launcher/maml/Theme;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Ljava/util/function/Consumer;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->lambda$apply$5(Lcom/miui/home/launcher/maml/Theme;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Ljava/util/function/Consumer;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TUq4mBMBEMOfaJ0DvQEIqt_-0ys(Lcom/miui/home/launcher/maml/MaMlWidgetView;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->lambda$onUpgrade$1(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XCF3bvL0O0u05DKTjvW9BoN80tU(Ljava/util/function/Consumer;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->lambda$apply$4(Ljava/util/function/Consumer;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bUtYz2K3Y536R69KAB8xz7Sp0ns(Lcom/miui/home/launcher/maml/MaMlWidgetView;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;ZLjava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->lambda$reload$7(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;ZLjava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nTVnMokh2GLnskF52CNiHJ8UGhQ(Lcom/miui/home/launcher/maml/MaMlWidgetView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->lambda$onUpgrade$3(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nWdtKdKtSXcJVoTPbpVLq0zfr6A(Lcom/miui/home/launcher/maml/MaMlWidgetView;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->lambda$onUpgrade$2(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tKbkbsQ2WLIFjOIfNg8WC21vbQ4(Lcom/miui/home/launcher/maml/MaMlWidgetView;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;ZLcom/miui/home/launcher/maml/MaMlHostView;Lcom/miui/home/launcher/Launcher;Ljava/lang/Void;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->lambda$create$0(Lcom/miui/home/launcher/maml/MaMlWidgetView;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;ZLcom/miui/home/launcher/maml/MaMlHostView;Lcom/miui/home/launcher/Launcher;Ljava/lang/Void;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mSkipNextAutoLayoutAnimation:Z

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mSkipNextAutoLayoutAnimation:Z

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method private applyThemeIfNeed(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v0

    .line 322
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getTheme(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lcom/miui/home/launcher/maml/Theme;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {p0, v1, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->apply(Lcom/miui/home/launcher/maml/Theme;Ljava/util/function/Consumer;)Z

    goto :goto_0

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {v1}, Lcom/miui/maml/component/MamlView;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    iget-object v2, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getResizeScale(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Lcom/miui/home/launcher/maml/Theme;)F

    move-result p0

    new-instance v0, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda7;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {v1, v2, p0, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->applyPath(Ljava/lang/String;FLjava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static create(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;ZZ)Lcom/miui/home/launcher/maml/MaMlWidgetView;
    .locals 7

    .line 163
    sput-boolean p2, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHasTitle:Z

    .line 164
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v5

    if-eqz p2, :cond_0

    const p2, 0x7f0d0095

    goto :goto_0

    :cond_0
    const p2, 0x7f0d0096

    .line 166
    :goto_0
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/maml/MaMlWidgetView;

    .line 168
    invoke-direct {p2, v5, p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->createMaMlHostView(Landroid/content/Context;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object v4

    .line 169
    invoke-virtual {v4}, Lcom/miui/maml/component/MamlView;->supportBackgroundBlur()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->supportBackgroundBlur:Z

    .line 170
    invoke-virtual {v4, p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->setTag(Ljava/lang/Object;)V

    .line 172
    iput-object p2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    .line 173
    invoke-virtual {p2, v4}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->setMaMl(Lcom/miui/home/launcher/maml/MaMlHostView;)V

    .line 174
    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->setTag(Ljava/lang/Object;)V

    .line 175
    iget v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->setWidgetId(I)V

    .line 176
    invoke-direct {p2, p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->updateTitle(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    .line 178
    new-instance v6, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda5;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda5;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;ZLcom/miui/home/launcher/maml/MaMlHostView;Lcom/miui/home/launcher/Launcher;)V

    invoke-direct {p2, v6}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->applyThemeIfNeed(Ljava/util/function/Consumer;)V

    .line 186
    invoke-virtual {p0}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p2
.end method

.method private createMaMlHostView(Landroid/content/Context;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lcom/miui/home/launcher/maml/MaMlHostView;
    .locals 1

    .line 89
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createMaMlHostView: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MaMlWidgetView"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p0, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 92
    new-instance p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;

    iget-object v0, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 94
    iput p0, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->status:I

    .line 95
    new-instance p0, Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/maml/MaMlHostView;-><init>(Landroid/content/Context;)V

    .line 97
    :goto_0
    iget p1, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->setWidgetId(I)V

    return-object p0
.end method

.method private static createMaMlPendingHostView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Lcom/miui/home/launcher/maml/MaMlWidgetView;)V
    .locals 4

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maml view no add success, info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->printDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MaMlWidgetView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launcher no exist info = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->printDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    if-nez p0, :cond_1

    .line 199
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no have maml view cellLayout info = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->printDetail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 202
    :cond_1
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_2

    .line 203
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no add maml view info = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->printDetail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 206
    iput-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 207
    invoke-static {p1, v0, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->create(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;ZZ)Lcom/miui/home/launcher/maml/MaMlWidgetView;

    move-result-object p1

    .line 208
    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 209
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    const/4 p2, -0x1

    .line 210
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static from(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lcom/miui/home/launcher/maml/MaMlWidgetView;
    .locals 1

    const/4 v0, 0x1

    .line 155
    invoke-static {p0, v0, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->create(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;ZZ)Lcom/miui/home/launcher/maml/MaMlWidgetView;

    move-result-object p0

    return-object p0
.end method

.method public static from(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Z)Lcom/miui/home/launcher/maml/MaMlWidgetView;
    .locals 1

    const/4 v0, 0x1

    .line 159
    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->create(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;ZZ)Lcom/miui/home/launcher/maml/MaMlWidgetView;

    move-result-object p0

    return-object p0
.end method

.method private getResizeScale(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Lcom/miui/home/launcher/maml/Theme;)F
    .locals 4

    .line 264
    iget-boolean p0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-eqz p2, :cond_0

    .line 265
    invoke-interface {p2}, Lcom/miui/home/launcher/maml/Theme;->getTitleStyle()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 p0, 0x0

    .line 268
    :cond_0
    iget p2, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 269
    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 270
    invoke-static {p2, p1, p0}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetSizeSpec(IIZ)J

    move-result-wide v0

    const/16 p0, 0x20

    shr-long v2, v0, p0

    long-to-int p0, v2

    long-to-int v0, v0

    .line 272
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 273
    invoke-static {p2, p1, p0, v0}, Lcom/miui/home/launcher/MIUIWidgetUtil;->getMamlWidgetScaleRatio(IIII)F

    move-result p0

    return p0
.end method

.method private getTheme(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lcom/miui/home/launcher/maml/Theme;
    .locals 0

    .line 338
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->supportTheme()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 339
    invoke-static {p1}, Lcom/miui/home/launcher/maml/ThemeFactory;->getTheme(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/maml/Theme;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTitleByAppPackage(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Ljava/lang/String;
    .locals 0

    .line 309
    iget-object p0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appPackage:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appName:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 310
    iget-object p0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appName:Ljava/lang/String;

    return-object p0

    .line 312
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static synthetic lambda$apply$4(Ljava/util/function/Consumer;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 255
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$apply$5(Lcom/miui/home/launcher/maml/Theme;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Ljava/util/function/Consumer;Ljava/lang/Boolean;)V
    .locals 5

    .line 243
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mThemeApplied:Z

    .line 244
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    const/4 v0, 0x0

    const-string v1, " to widget id = "

    const-string v2, "MaMlWidgetView"

    if-eqz p4, :cond_0

    .line 245
    iget-object p4, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mTheme:Lcom/miui/home/launcher/maml/Theme;

    const-string v3, "THEME_APPLIED"

    invoke-interface {p4, p0, v3}, Lcom/miui/home/launcher/maml/Theme;->handle(Lcom/miui/home/launcher/maml/ThemeSupport;Ljava/lang/String;)V

    .line 246
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "apply theme:"

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/miui/home/launcher/maml/Theme;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p2, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    .line 248
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 251
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failure to apply theme:"

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/miui/home/launcher/maml/Theme;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p2, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-virtual {p4, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    iget-object p4, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getResizeScale(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Lcom/miui/home/launcher/maml/Theme;)F

    move-result p0

    new-instance p2, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda8;

    invoke-direct {p2, p3}, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda8;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p1, p4, p0, p2}, Lcom/miui/home/launcher/maml/MaMlHostView;->applyPath(Ljava/lang/String;FLjava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$applyThemeIfNeed$6(Ljava/util/function/Consumer;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 329
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$create$0(Lcom/miui/home/launcher/maml/MaMlWidgetView;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;ZLcom/miui/home/launcher/maml/MaMlHostView;Lcom/miui/home/launcher/Launcher;Ljava/lang/Void;)V
    .locals 0

    .line 179
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->updateEditLinkUri(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    .line 180
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->updateTitle(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    .line 181
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->onWallpaperColorChanged()V

    if-eqz p2, :cond_0

    .line 182
    invoke-virtual {p3}, Lcom/miui/maml/component/MamlView;->isLoaded()Z

    move-result p2

    if-nez p2, :cond_0

    .line 183
    invoke-static {p4, p1, p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->createMaMlPendingHostView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Lcom/miui/home/launcher/maml/MaMlWidgetView;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onUpgrade$1(Ljava/lang/String;I)V
    .locals 0

    .line 219
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->uninstallMaMl(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$onUpgrade$2(IILjava/lang/String;)V
    .locals 0

    if-eq p1, p2, :cond_0

    .line 219
    new-instance p2, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p3, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;Ljava/lang/String;I)V

    invoke-static {p2}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onUpgrade$3(Ljava/lang/Runnable;)V
    .locals 0

    .line 223
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->reload(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$reload$7(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;ZLjava/lang/Void;)V
    .locals 0

    .line 380
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->updateEditLinkUri(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    .line 381
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->updateTitle(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    .line 382
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->onWallpaperColorChanged()V

    if-eqz p2, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->onResume()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$requestUpdate$8()V
    .locals 2

    .line 489
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 490
    iget-boolean v1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mVisible:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isPause()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->onPause()V

    :cond_1
    return-void
.end method

.method private pauseWidget()V
    .locals 0

    .line 507
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->onPause()V

    return-void
.end method

.method private reload(Ljava/lang/Runnable;)V
    .locals 8

    .line 348
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v0

    .line 349
    iget-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object v1

    .line 350
    invoke-virtual {v1}, Lcom/miui/home/launcher/maml/MaMlHostView;->isResumed()Z

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const-string v4, "alpha"

    .line 351
    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v6, 0xc8

    .line 352
    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 353
    new-instance v4, Lcom/miui/home/launcher/maml/MaMlWidgetView$1;

    invoke-direct {v4, p0, v1, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView$1;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;Lcom/miui/home/launcher/maml/MaMlHostView;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 368
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 370
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->createMaMlHostView(Landroid/content/Context;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object p1

    .line 371
    invoke-virtual {p1}, Lcom/miui/maml/component/MamlView;->supportBackgroundBlur()Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->supportBackgroundBlur:Z

    .line 372
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->setTag(Ljava/lang/Object;)V

    .line 373
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->setMaMl(Lcom/miui/home/launcher/maml/MaMlHostView;)V

    .line 374
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->updateTitle(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    .line 376
    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 377
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 379
    new-instance p1, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, v0, v2}, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Z)V

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->applyThemeIfNeed(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private resumeWidget()V
    .locals 0

    .line 503
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->onResume()V

    return-void
.end method

.method private shouldDisplayTitle(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z
    .locals 0

    .line 317
    invoke-static {p1}, Lcom/miui/home/launcher/maml/MaMlWidgetUtilities;->isClock(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private updateEditLinkUri(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V
    .locals 9

    .line 103
    iget-object v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->movement:Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "%d,%d"

    if-eqz v0, :cond_0

    iget v5, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;->paWidgetId:I

    if-lez v5, :cond_0

    .line 105
    iget v6, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    iput v6, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;->homeWidgetId:I

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    .line 109
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    new-array v3, v3, [Ljava/lang/Object;

    .line 111
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    .line 112
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    .line 108
    invoke-static {v7, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v0, v1}, Lcom/miui/maml/widget/edit/WidgetEditSave;->setLocalId(Lcom/miui/maml/component/MamlView;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 115
    iget v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->originWidgetId:I

    if-lez v0, :cond_1

    .line 117
    iget v5, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    .line 118
    iget-object v6, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    .line 121
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    new-array v3, v3, [Ljava/lang/Object;

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    .line 124
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    .line 120
    invoke-static {v7, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v6, v0}, Lcom/miui/maml/widget/edit/WidgetEditSave;->setLocalId(Lcom/miui/maml/component/MamlView;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    iget v1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/widget/edit/WidgetEditSave;->setLocalId(Lcom/miui/maml/component/MamlView;Ljava/lang/String;)V

    .line 131
    :goto_0
    iget-boolean v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isEditable:Z

    if-eqz v0, :cond_4

    .line 132
    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->customEditUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    iget-object v1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->type:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v7, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->customEditUri:Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    .line 136
    invoke-static {p0}, Lcom/miui/maml/widget/edit/WidgetEditSave;->getLocalId(Lcom/miui/maml/component/MamlView;)Ljava/lang/String;

    move-result-object v8

    const-string v6, "home"

    .line 133
    invoke-static/range {v1 .. v8}, Lcom/miui/maml/widget/edit/MamlutilKt;->createLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->editUri:Ljava/lang/String;

    goto :goto_1

    .line 141
    :cond_2
    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-static {v0, v1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->createConfigPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    .line 144
    :cond_3
    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->editUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 148
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->createEditUri(Landroid/content/Context;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->editUri:Ljava/lang/String;

    :cond_4
    :goto_1
    return-void
.end method

.method private updateTitle(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V
    .locals 3

    .line 289
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getTitleByAppPackage(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Ljava/lang/String;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 291
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->shouldDisplayTitle(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getTheme()Lcom/miui/home/launcher/maml/Theme;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 299
    invoke-interface {p1}, Lcom/miui/home/launcher/maml/Theme;->getTitleStyle()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 301
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 303
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public apply(Lcom/miui/home/launcher/maml/Theme;Ljava/util/function/Consumer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/maml/Theme;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mTheme:Lcom/miui/home/launcher/maml/Theme;

    .line 237
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->isResumed()Z

    .line 238
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {v0}, Lcom/miui/maml/component/MamlView;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->onDestroy()V

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-interface {p1}, Lcom/miui/home/launcher/maml/Theme;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getResizeScale(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Lcom/miui/home/launcher/maml/Theme;)F

    move-result v3

    new-instance v4, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, p1, v0, p2}, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda6;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;Lcom/miui/home/launcher/maml/Theme;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Ljava/util/function/Consumer;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/home/launcher/maml/MaMlHostView;->applyPath(Ljava/lang/String;FLjava/util/function/Consumer;)V

    const/4 p0, 0x1

    return p0
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 672
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 662
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureSoscController;->isForbidLaunchSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "dispatchTouchEvent: isForbidLaunchSplit = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MaMlWidgetView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 667
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getAnimTargetContainerView()Landroid/view/View;
    .locals 0

    .line 614
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    return-object p0
.end method

.method public bridge synthetic getAnimTargetHeight()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetHeight()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getAnimTargetOriginalLocation()Landroid/graphics/Rect;
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getAnimTargetOriginalLocation()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getAnimTargetVisibility()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetVisibility()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getAnimTargetWidth()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getAnimTargetWidth()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getBindAppPackage()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getBindAppPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBoundsOnScreen()Landroid/graphics/Rect;
    .locals 1

    .line 655
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 656
    invoke-virtual {p0, p0, v0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->getBoundsOnScreenInternal(Lcom/miui/home/launcher/HostViewContainer;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public bridge synthetic getContentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getContentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getCornerRadius()F
    .locals 0

    .line 687
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getCornerRadius()F

    move-result p0

    return p0
.end method

.method public getEditUri()Ljava/lang/String;
    .locals 1

    .line 587
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object p0

    .line 588
    iget-boolean v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isEditable:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->editUri:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getHeightDiffBetweenImageAndImageView()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getHeightDiffBetweenImageAndImageView()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getHostView()Landroid/view/View;
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object p0

    return-object p0
.end method

.method public getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;
    .locals 0

    .line 405
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    return-object p0
.end method

.method public getIconRadius()F
    .locals 0

    .line 639
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getCornerRadius()F

    move-result p0

    return p0
.end method

.method public bridge synthetic getIconTransparentEdge()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconTransparentEdge()I

    move-result p0

    return p0
.end method

.method public getItemInfo()Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    .line 714
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getItemInfoFromTag()Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object p0

    return-object p0
.end method

.method public getItemInfoFromTag()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;
    .locals 1

    .line 592
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    .line 593
    instance-of v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v0, :cond_0

    .line 596
    check-cast p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    return-object p0

    .line 594
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "wrong type of ItemInfo"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic getScreenId()J
    .locals 2

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getScreenId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSkipNextAutoLayoutAnimation()Z
    .locals 0

    .line 540
    iget-boolean p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mSkipNextAutoLayoutAnimation:Z

    return p0
.end method

.method public getTargetRootView()Landroid/view/View;
    .locals 0

    .line 644
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getTheme()Lcom/miui/home/launcher/maml/Theme;
    .locals 1

    .line 278
    iget-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mThemeApplied:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mTheme:Lcom/miui/home/launcher/maml/Theme;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getTitleView()Landroid/view/View;
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p0

    return-object p0
.end method

.method public getTitleView()Lcom/miui/home/launcher/TitleTextView;
    .locals 0

    .line 601
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    return-object p0
.end method

.method public getTouchViewOptions(Landroid/graphics/Rect;)Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getViewCellX()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewCellX()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewCellY()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewCellY()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewSpanX()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewSpanX()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewSpanY()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewSpanY()I

    move-result p0

    return p0
.end method

.method public getVisionCenter([I)V
    .locals 4

    .line 569
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1}, Lcom/miui/home/launcher/common/Utilities;->getLocationInParent(Landroid/view/View;Landroid/view/View;[IZ)F

    const/4 v0, 0x0

    .line 570
    aget v2, p1, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, p1, v0

    .line 571
    aget v0, p1, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    aput v0, p1, v1

    return-void
.end method

.method public getVisionOffset([I)V
    .locals 2

    .line 564
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1}, Lcom/miui/home/launcher/common/Utilities;->getLocationInParent(Landroid/view/View;Landroid/view/View;[IZ)F

    return-void
.end method

.method public getVisionRect(Landroid/graphics/Rect;)V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 576
    fill-array-data v0, :array_0

    .line 577
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p0, v0, v2}, Lcom/miui/home/launcher/common/Utilities;->getLocationInParent(Landroid/view/View;Landroid/view/View;[IZ)F

    const/4 v1, 0x0

    aget v3, v0, v1

    aget v4, v0, v2

    aget v1, v0, v1

    .line 578
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    add-int/2addr v1, v5

    aget v0, v0, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    invoke-virtual {p1, v3, v4, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getWidgetContainer()Landroid/view/View;
    .locals 0

    .line 700
    iget-object p0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    return-object p0
.end method

.method public getWidgetId()I
    .locals 0

    .line 426
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getWidgetId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public bridge synthetic getWidthDiffBetweenImageAndImageView()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getWidthDiffBetweenImageAndImageView()I

    move-result p0

    return p0
.end method

.method public isAutoLayoutAnimating()Z
    .locals 0

    .line 520
    iget-boolean p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mIsAutoLayoutAnimating:Z

    return p0
.end method

.method public isEnableAutoLayoutAnimation()Z
    .locals 0

    .line 549
    iget-boolean p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return p0
.end method

.method public isUseTransitionAnimation()Z
    .locals 0

    .line 650
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->disableCutRoundCorner()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyColorChanged()V
    .locals 0

    .line 471
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz p0, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->notifyColorChanged()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 511
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onDestroy()V

    .line 512
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz p0, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->onDestroy()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 410
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onFinishInflate()V

    const v0, 0x7f0a0203

    .line 411
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/TitleTextView;

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    const/4 v1, 0x4

    .line 412
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 413
    sget-boolean v0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHasTitle:Z

    if-nez v0, :cond_0

    .line 414
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onInvisible()V
    .locals 0

    .line 459
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onInvisible()V

    .line 460
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->pauseWidget()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 447
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onPause()V

    .line 448
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->pauseWidget()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 442
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onResume()V

    .line 443
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->resumeWidget()V

    return-void
.end method

.method public onUpgrade(II)V
    .locals 2

    .line 215
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v0

    .line 216
    iget-object v0, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    .line 217
    new-instance v1, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;IILjava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getTheme()Lcom/miui/home/launcher/maml/Theme;

    move-result-object p1

    if-nez p1, :cond_0

    .line 223
    new-instance p1, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v1}, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 225
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public onVisible()V
    .locals 0

    .line 453
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onVisible()V

    .line 454
    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->resumeWidget()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 465
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onWallpaperColorChanged()V

    .line 466
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->notifyColorChanged()V

    return-void
.end method

.method public requestUpdate(Z)V
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 486
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 487
    iget-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->onResume()V

    .line 488
    new-instance p1, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 495
    :cond_0
    invoke-virtual {v0}, Lcom/miui/maml/component/MamlView;->doRender()V

    :cond_1
    :goto_0
    return-void
.end method

.method public sendEvent(Ljava/lang/String;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mTheme:Lcom/miui/home/launcher/maml/Theme;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/maml/Theme;->accept(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mTheme:Lcom/miui/home/launcher/maml/Theme;

    invoke-interface {v0, p0, p1}, Lcom/miui/home/launcher/maml/Theme;->handle(Lcom/miui/home/launcher/maml/ThemeSupport;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setAnimTargetAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->setAnimTargetAlpha(F)V

    return-void
.end method

.method public bridge synthetic setAnimTargetVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->setAnimTargetVisibility(I)V

    return-void
.end method

.method public setEnableAutoLayoutAnimation(Z)V
    .locals 0

    .line 530
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 554
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIII)Z

    move-result p0

    return p0
.end method

.method public setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V
    .locals 0

    return-void
.end method

.method public setHostView(Lcom/miui/home/launcher/maml/MaMlHostView;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    return-void
.end method

.method public bridge synthetic setIgnoreAnimationForOnce(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setIgnoreAnimationForOnce(Z)V

    return-void
.end method

.method public setIsAutoLayoutAnimating(Z)V
    .locals 0

    .line 525
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mIsAutoLayoutAnimating:Z

    return-void
.end method

.method public setIsDrawPagToContent(Z)V
    .locals 0

    .line 618
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->setIsDrawingInFloatingView(Z)V

    return-void
.end method

.method public setIsDrawingInScreenPreview(Z)V
    .locals 1

    .line 623
    iput-boolean p1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mIsDrawingInScreenPreview:Z

    .line 624
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->setIsDrawingInScreenPreview(Z)V

    .line 625
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 627
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/TitleTextView;->setIsDrawingInScreenPreview(Z)V

    :cond_0
    return-void
.end method

.method public setIsDrawingInThumbnailView(Z)V
    .locals 0

    .line 633
    iput-boolean p1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mIsDrawingInThumbnailView:Z

    .line 634
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->setIsDrawingInThumbnailView(Z)V

    return-void
.end method

.method public setMaMl(Lcom/miui/home/launcher/maml/MaMlHostView;)V
    .locals 2

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMaMl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MaMlWidgetView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iput-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    .line 395
    iget-object v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 396
    iget-object p0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->setIsMIUIWidget(Z)V

    return-void
.end method

.method public setSkipNextAutoLayoutAnimation(Z)V
    .locals 0

    .line 535
    iput-boolean p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mSkipNextAutoLayoutAnimation:Z

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    .line 431
    invoke-super {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->setTag(Ljava/lang/Object;)V

    .line 432
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->setTag(Ljava/lang/Object;)V

    .line 435
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v0, :cond_1

    .line 436
    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 437
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->setUpgradeListener(Lcom/miui/home/launcher/MIUIWidgetBasicInfo$UpgradeListener;)V

    :cond_1
    return-void
.end method

.method public setWidgetId(I)V
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz p0, :cond_0

    .line 420
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->setWidgetId(I)V

    :cond_0
    return-void
.end method

.method public superSetFrame(IIII)Z
    .locals 0

    .line 545
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherRelativeLayout;->setFrame(IIII)Z

    move-result p0

    return p0
.end method

.method public supportTheme()Z
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    instance-of p0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public touchIn(Landroid/graphics/Rect;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateColor(I)V
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mHostView:Lcom/miui/home/launcher/maml/MaMlHostView;

    if-eqz p0, :cond_0

    .line 479
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->updateColor(I)V

    :cond_0
    return-void
.end method

.method public updateSizeOnIconSizeChanged()V
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->updateSizeOnIconSizeChanged()V

    .line 707
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    if-eqz p0, :cond_0

    .line 708
    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->updateSizeOnIconSizeChanged()V

    :cond_0
    return-void
.end method

.method public updateWidgetSize()V
    .locals 1

    const/4 v0, 0x1

    .line 692
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->requestUpdate(Z)V

    return-void
.end method
