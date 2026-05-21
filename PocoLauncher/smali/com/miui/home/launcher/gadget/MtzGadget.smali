.class public Lcom/miui/home/launcher/gadget/MtzGadget;
.super Lcom/miui/home/launcher/gadget/AdvancedGadget;
.source "MtzGadget.java"

# interfaces
.implements Lcom/miui/home/launcher/gadget/ColorUpdatable;


# static fields
.field private static ROOT_TAG:Ljava/lang/String; = "gadget"


# instance fields
.field private mAwesomeView:Landroid/view/View;

.field private mCommandListener:Lcom/miui/launcher/views/MamlOnExternCommandListener;

.field private mElementContext:Ljava/lang/Object;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsAutoLayoutAnimating:Z

.field private mIsPlayer:Z

.field private mRoot:Ljava/lang/Object;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/gadget/GadgetInfo;)V
    .locals 4

    .line 44
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/AdvancedGadget;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->isMtzGadget()Z

    move-result v0

    const-string v1, "MtzGadget"

    const v2, 0x7f0d0037

    if-eqz v0, :cond_2

    .line 46
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0178

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f10035c

    .line 48
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gadget load error:mission file:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 51
    :cond_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getCategoryId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mIsPlayer:Z

    .line 52
    invoke-virtual {p2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content/"

    invoke-static {p1, v0, v2}, Lcom/miui/launcher/utils/MamlUtils;->createScreenContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mElementContext:Ljava/lang/Object;

    .line 53
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    goto :goto_1

    .line 56
    :cond_2
    invoke-static {p1, v2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gadget load error:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_1
    new-instance p1, Landroid/view/GestureDetector;

    new-instance v0, Lcom/miui/home/launcher/gadget/MtzGadget$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/MtzGadget$1;-><init>(Lcom/miui/home/launcher/gadget/MtzGadget;)V

    invoke-direct {p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mGestureDetector:Landroid/view/GestureDetector;

    .line 66
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mTitle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/gadget/MtzGadget;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mIsPlayer:Z

    return p0
.end method

.method private setResizeRadio()V
    .locals 6

    .line 173
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ItemInfo;

    if-nez v0, :cond_0

    const-string v0, "MtzGadget"

    const-string/jumbo v1, "tag is not item info"

    .line 174
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 177
    iget v1, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 178
    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    const/4 v2, 0x0

    .line 179
    invoke-static {v1, v0, v2}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetSizeSpec(IIZ)J

    move-result-wide v2

    const/16 v4, 0x20

    shr-long v4, v2, v4

    long-to-int v4, v4

    long-to-int v2, v2

    .line 181
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 182
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    invoke-static {v1, v0, v4, v2}, Lcom/miui/home/launcher/MIUIWidgetUtil;->getMamlWidgetScaleRatio(IIII)F

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/launcher/utils/MamlUtils;->setResizeRadio(Ljava/lang/Object;F)V

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mAwesomeView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/gadget/AdvancedGadget;->cleanUpView(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public clearCache()V
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    invoke-static {p0}, Lcom/miui/launcher/utils/MamlUtils;->clearResourceCache(Ljava/lang/Object;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 211
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic getScreenId()J
    .locals 2

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getScreenId()J

    move-result-wide v0

    return-wide v0
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

.method public isAutoLayoutAnimating()Z
    .locals 0

    .line 245
    iget-boolean p0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mIsAutoLayoutAnimating:Z

    return p0
.end method

.method public isInvalidateGadget()Z
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mElementContext:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyColorChanged()V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mElementContext:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 221
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->updateLauncherComponentColorByWallpaper(Lcom/miui/home/launcher/gadget/ColorUpdatable;)V

    :cond_0
    return-void
.end method

.method public onAdded()V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mElementContext:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->getManifestRoot(Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 118
    :cond_1
    sget-object v1, Lcom/miui/home/launcher/gadget/MtzGadget;->ROOT_TAG:Ljava/lang/String;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mElementContext:Ljava/lang/Object;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->createScreenElementRoot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 122
    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->setScaleByDensity(Ljava/lang/Object;Z)V

    .line 123
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->setDefaultFramerate(Ljava/lang/Object;F)V

    .line 124
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/MtzGadget;->setResizeRadio()V

    .line 125
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->load(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 119
    :cond_2
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad root tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0037

    invoke-static {v0, v1, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    if-nez v0, :cond_4

    return-void

    .line 136
    :cond_4
    new-instance v0, Lcom/miui/home/launcher/gadget/MtzGadget$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/MtzGadget$2;-><init>(Lcom/miui/home/launcher/gadget/MtzGadget;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mCommandListener:Lcom/miui/launcher/views/MamlOnExternCommandListener;

    .line 150
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/miui/launcher/utils/MamlUtils;->setOnExternCommandListener(Ljava/lang/Object;Lcom/miui/launcher/views/MamlOnExternCommandListener;)V

    .line 151
    iget-object v0, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->createAwesomeGadgetView(Landroid/content/Context;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mAwesomeView:Landroid/view/View;

    const/4 v1, 0x0

    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 153
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 156
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mAwesomeView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/MtzGadget;->notifyColorChanged()V

    .line 159
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mAwesomeView:Landroid/view/View;

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onEditDisable()V
    .locals 0

    return-void
.end method

.method public onEditNormal()V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 165
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 169
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 3

    .line 75
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 77
    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    const-string v2, "pause"

    invoke-static {v1, v2}, Lcom/miui/launcher/utils/MamlUtils;->onCommand(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 81
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mAwesomeView:Landroid/view/View;

    invoke-static {p0}, Lcom/miui/launcher/utils/MamlUtils;->onPause(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 86
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 88
    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    const-string v2, "resume"

    invoke-static {v1, v2}, Lcom/miui/launcher/utils/MamlUtils;->onCommand(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 92
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mAwesomeView:Landroid/view/View;

    invoke-static {p0}, Lcom/miui/launcher/utils/MamlUtils;->onResume(Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mAwesomeView:Landroid/view/View;

    invoke-static {p0}, Lcom/miui/launcher/utils/MamlUtils;->onResume(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mAwesomeView:Landroid/view/View;

    invoke-static {p0}, Lcom/miui/launcher/utils/MamlUtils;->onPause(Ljava/lang/Object;)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 192
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/MtzGadget;->notifyColorChanged()V

    return-void
.end method

.method public bridge synthetic setIgnoreAnimationForOnce(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setIgnoreAnimationForOnce(Z)V

    return-void
.end method

.method public setIsAutoLayoutAnimating(Z)V
    .locals 0

    .line 250
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mIsAutoLayoutAnimating:Z

    return-void
.end method

.method public updateColor(I)V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mElementContext:Ljava/lang/Object;

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    const-string p1, "applied_light_wallpaper"

    .line 228
    invoke-static {v0, p0, p1, v1, v2}, Lcom/miui/launcher/utils/MamlUtils;->updateVariable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;D)V

    :cond_1
    return-void
.end method
