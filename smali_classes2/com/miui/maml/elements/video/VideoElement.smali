.class public Lcom/miui/maml/elements/video/VideoElement;
.super Lcom/miui/maml/elements/ViewHolderScreenElement;
.source "VideoElement.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "VideoElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Video"


# instance fields
.field private mSource:Lcom/miui/maml/util/MamlMediaDataSource;

.field private mView:Lcom/miui/maml/elements/video/BaseVideoView;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ViewHolderScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 27
    invoke-direct {p0}, Lcom/miui/maml/elements/video/VideoElement;->load()V

    return-void
.end method

.method private load()V
    .locals 3

    .line 160
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getMamlSurface()Lcom/miui/maml/component/MamlSurface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Lcom/miui/maml/elements/video/SurfaceVideoView;

    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->getMamlSurface()Lcom/miui/maml/component/MamlSurface;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/elements/video/SurfaceVideoView;-><init>(Landroid/content/Context;Lcom/miui/maml/component/MamlSurface;)V

    iput-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 165
    iget v1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayer:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 166
    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    goto :goto_0

    .line 169
    :cond_0
    new-instance v0, Lcom/miui/maml/elements/video/NormalVideoView;

    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/video/NormalVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 171
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/video/BaseVideoView;->setName(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/video/BaseVideoView;->setFormat(I)V

    .line 173
    iget-object p0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public config(ZILjava/lang/String;)V
    .locals 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config: path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " looping "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " scaleMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoElement"

    invoke-static {v1, v0}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mSource:Lcom/miui/maml/util/MamlMediaDataSource;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/maml/util/MamlMediaDataSource;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    :cond_1
    new-instance v0, Lcom/miui/maml/util/MamlMediaDataSource;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-direct {v0, v1, v2, p3}, Lcom/miui/maml/util/MamlMediaDataSource;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mSource:Lcom/miui/maml/util/MamlMediaDataSource;

    .line 117
    :cond_2
    iget-object p3, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-virtual {p3, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->setLooping(Z)V

    .line 118
    iget-object p1, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-virtual {p1, p2}, Lcom/miui/maml/elements/video/BaseVideoView;->setScaleMode(I)V

    .line 119
    iget-object p1, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    iget-object p0, p0, Lcom/miui/maml/elements/video/VideoElement;->mSource:Lcom/miui/maml/util/MamlMediaDataSource;

    invoke-virtual {p1, p0}, Lcom/miui/maml/elements/video/BaseVideoView;->setVideoDataSource(Landroid/media/MediaDataSource;)V

    return-void
.end method

.method protected doTick(J)V
    .locals 0

    .line 144
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ViewHolderScreenElement;->doTick(J)V

    .line 145
    iget-object p0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    if-eqz p0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->doTick()V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 0

    .line 43
    invoke-super {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->finish()V

    .line 48
    iget-object p0, p0, Lcom/miui/maml/elements/video/VideoElement;->mSource:Lcom/miui/maml/util/MamlMediaDataSource;

    if-eqz p0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->close()V

    :cond_0
    return-void
.end method

.method protected getView()Landroid/view/View;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    return-object p0
.end method

.method public init()V
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->init()V

    .line 36
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/maml/elements/video/BaseVideoView;->init(Lcom/miui/maml/data/Variables;)V

    :cond_0
    return-void
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ViewHolderScreenElement;->onViewAdded(Landroid/view/View;)V

    return-void
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ViewHolderScreenElement;->onViewRemoved(Landroid/view/View;)V

    .line 130
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/VideoElement;->stop()V

    return-void
.end method

.method public pause()V
    .locals 2

    const-string v0, "VideoElement"

    const-string v1, "pause"

    .line 54
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object p0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    const-string v0, "VideoElement"

    const-string v1, "play"

    .line 64
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mSource:Lcom/miui/maml/util/MamlMediaDataSource;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/miui/maml/util/MamlMediaDataSource;->tryToGenerateMemoryFile()V

    .line 71
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    if-eqz p0, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->start()V

    :cond_1
    return-void
.end method

.method public seekTo(I)V
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekTo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoElement"

    invoke-static {v1, v0}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object p0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    if-eqz p0, :cond_0

    .line 95
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVolume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoElement"

    invoke-static {v1, v0}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object p0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "VideoElement"

    const-string v1, "stop"

    .line 77
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/miui/maml/elements/video/BaseVideoView;->stopPlayback()V

    .line 84
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/video/VideoElement;->mSource:Lcom/miui/maml/util/MamlMediaDataSource;

    if-eqz p0, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->releaseMemoryFile()V

    :cond_1
    return-void
.end method

.method protected updateView()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/miui/maml/elements/video/VideoElement;->mView:Lcom/miui/maml/elements/video/BaseVideoView;

    if-eqz v0, :cond_1

    .line 136
    iget-boolean v1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdatePosition:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdateTranslation:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdateSize:Z

    if-eqz v1, :cond_1

    .line 137
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->onUpdateView(Landroid/view/View;)V

    :cond_1
    return-void
.end method
