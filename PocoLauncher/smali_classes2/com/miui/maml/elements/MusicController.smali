.class public Lcom/miui/maml/elements/MusicController;
.super Ljava/lang/Object;
.source "MusicController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MAML_MusicController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMediaCallback:Landroid/media/session/MediaController$Callback;

.field private mMediaController:Landroid/media/session/MediaController;

.field private mSessionManager:Landroid/media/session/MediaSessionManager;

.field private mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private mUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/miui/maml/elements/MusicController$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/elements/MusicController$1;-><init>(Lcom/miui/maml/elements/MusicController;)V

    iput-object v0, p0, Lcom/miui/maml/elements/MusicController;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 41
    new-instance v0, Lcom/miui/maml/elements/MusicController$2;

    invoke-direct {v0, p0}, Lcom/miui/maml/elements/MusicController$2;-><init>(Lcom/miui/maml/elements/MusicController;)V

    iput-object v0, p0, Lcom/miui/maml/elements/MusicController;->mMediaCallback:Landroid/media/session/MediaController$Callback;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/MusicController;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/miui/maml/elements/MusicController;->mHandler:Landroid/os/Handler;

    const-string p2, "media_session"

    .line 113
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/MediaSessionManager;

    iput-object p1, p0, Lcom/miui/maml/elements/MusicController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    .line 114
    invoke-virtual {p0}, Lcom/miui/maml/elements/MusicController;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/elements/MusicController;Ljava/util/List;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/MusicController;->resetMediaController(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/maml/elements/MusicController;->mUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    return-object p0
.end method

.method private clearMediaController()V
    .locals 3

    const-string v0, "MAML_MusicController"

    const-string v1, "clearMediaController"

    .line 149
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/miui/maml/elements/MusicController;->mUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    if-eqz v1, :cond_0

    .line 152
    invoke-interface {v1}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientChange()V

    .line 155
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/miui/maml/elements/MusicController;->mMediaCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "unregister MediaController.Callback failed"

    .line 157
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    :cond_1
    return-void
.end method

.method private initMediaController()V
    .locals 3

    const-string v0, "MAML_MusicController"

    const-string v1, "initMediaController"

    .line 164
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_0

    .line 167
    :try_start_0
    iget-object v2, p0, Lcom/miui/maml/elements/MusicController;->mMediaCallback:Landroid/media/session/MediaController$Callback;

    iget-object p0, p0, Lcom/miui/maml/elements/MusicController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "register MediaController.Callback failed"

    .line 169
    invoke-static {v0, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private resetMediaController(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    const-string v0, "MAML_MusicController"

    const-string v1, "resetMediaController"

    .line 128
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicController;->clearMediaController()V

    if-eqz p1, :cond_2

    .line 131
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 135
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/MediaController;

    iput-object p1, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/elements/MusicController;->mUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    if-eqz p1, :cond_1

    .line 138
    invoke-interface {p1}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onSessionDestroyed()V

    .line 139
    iget-object p1, p0, Lcom/miui/maml/elements/MusicController;->mUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    invoke-interface {p1}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onControllerEmpty()V

    :cond_1
    const-string p1, "controllers isEmpty, SessionDestroyed "

    .line 141
    invoke-static {v0, p1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :goto_0
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicController;->initMediaController()V

    .line 144
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicController;->updateInfoToListener()V

    :cond_2
    return-void
.end method

.method private updateInfoToListener()V
    .locals 2

    const-string v0, "MAML_MusicController"

    const-string v1, "updateInfoToListener"

    .line 175
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    if-eqz v0, :cond_1

    .line 177
    invoke-interface {v0}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientChange()V

    .line 178
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v1, p0, Lcom/miui/maml/elements/MusicController;->mUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    iget-object p0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientMetadataUpdate(Landroid/media/MediaMetadata;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    const-string v0, "MAML_MusicController"

    const-string v1, "finish"

    .line 304
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/miui/maml/elements/MusicController;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 306
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicController;->clearMediaController()V

    return-void
.end method

.method public getClientPackageName()Ljava/lang/String;
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getEstimatedMediaPosition()J
    .locals 2

    .line 187
    iget-object p0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p0, :cond_0

    .line 188
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 190
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    .line 214
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p0, :cond_0

    .line 215
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getPosition failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MAML_MusicController"

    invoke-static {v0, p0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public init()V
    .locals 3

    const-string v0, "MAML_MusicController"

    const-string v1, "init"

    .line 118
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/maml/elements/MusicController;->resetMediaController(Ljava/util/List;)V

    .line 120
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v2, p0, Lcom/miui/maml/elements/MusicController;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    iget-object p0, p0, Lcom/miui/maml/elements/MusicController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1, p0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    return-void
.end method

.method public isMusicActive()Z
    .locals 2

    .line 310
    iget-object p0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 311
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 313
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    move-result p0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public next()Z
    .locals 2

    .line 225
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p0, :cond_0

    .line 226
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " skipToNext failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MAML_MusicController"

    invoke-static {v0, p0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public pause()Z
    .locals 2

    .line 261
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p0, :cond_0

    .line 262
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " pause failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MAML_MusicController"

    invoke-static {v0, p0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public play()Z
    .locals 2

    .line 249
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p0, :cond_0

    .line 250
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " play failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MAML_MusicController"

    invoke-static {v0, p0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public prev()Z
    .locals 2

    .line 237
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p0, :cond_0

    .line 238
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " skipToPrevious failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MAML_MusicController"

    invoke-static {v0, p0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public rating(Landroid/media/Rating;)V
    .locals 1

    .line 273
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p0, :cond_0

    .line 274
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/media/session/MediaController$TransportControls;->setRating(Landroid/media/Rating;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 277
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RATING_KEY_BY_USER: failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MAML_MusicController"

    invoke-static {p1, p0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public registerListener(Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/miui/maml/elements/MusicController;->mUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 296
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicController;->updateInfoToListener()V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/maml/elements/MusicController;->resetMediaController(Ljava/util/List;)V

    return-void
.end method

.method public seekTo(J)Z
    .locals 0

    .line 202
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p0, :cond_0

    .line 203
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 207
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " seekTo failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MAML_MusicController"

    invoke-static {p1, p0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public sendMediaKeyEvent(II)Z
    .locals 1

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 284
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p1, p2}, Landroid/view/KeyEvent;-><init>(II)V

    const/16 p1, 0x1002

    .line 285
    invoke-virtual {v0, p1}, Landroid/view/KeyEvent;->setSource(I)V

    .line 286
    iget-object p0, p0, Lcom/miui/maml/elements/MusicController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0, v0}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 289
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Send media key event failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MAML_MusicController"

    invoke-static {p1, p0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public unregisterListener()V
    .locals 1

    const/4 v0, 0x0

    .line 300
    iput-object v0, p0, Lcom/miui/maml/elements/MusicController;->mUpdateListener:Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    return-void
.end method
