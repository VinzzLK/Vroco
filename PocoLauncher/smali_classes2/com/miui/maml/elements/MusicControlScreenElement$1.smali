.class Lcom/miui/maml/elements/MusicControlScreenElement$1;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"

# interfaces
.implements Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mClientChanged:Z

.field final synthetic this$0:Lcom/miui/maml/elements/MusicControlScreenElement;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/MusicControlScreenElement;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientChange()V
    .locals 3

    const/4 v0, 0x1

    .line 351
    iput-boolean v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->mClientChanged:Z

    .line 352
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2000(Lcom/miui/maml/elements/MusicControlScreenElement;)V

    .line 353
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->readPackageName()V

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clientChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2100(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object v1

    const-string v2, "null"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2100(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2200(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2200(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MusicControlScreenE"

    .line 354
    invoke-static {v0, p0}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClientMetadataUpdate(Landroid/media/MediaMetadata;)V
    .locals 11

    .line 278
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$902(Lcom/miui/maml/elements/MusicControlScreenElement;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;

    .line 279
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$900(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 282
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 283
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 287
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$900(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    move-result-object p1

    const-string v0, "android.media.metadata.TITLE"

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 288
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$900(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    move-result-object v0

    const-string v1, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$900(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    move-result-object v1

    const-string v2, "android.media.metadata.ALBUM"

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ntitle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", artist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", album: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MusicControlScreenE"

    invoke-static {v3, v2}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez p1, :cond_3

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_1

    .line 292
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v4}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1100(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;

    move-result-object v4

    invoke-virtual {v4, p1, v0, v1}, Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 293
    iget-object v5, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v5, p1, v0, v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1200(Lcom/miui/maml/elements/MusicControlScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :goto_1
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$900(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    move-result-object p1

    const-string v0, "android.media.metadata.ART"

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_4

    .line 298
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$900(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    move-result-object p1

    const-string v0, "android.media.metadata.ALBUM_ART"

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 300
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "artwork: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    const-string v1, "null"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p1, :cond_7

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_4

    :cond_7
    :goto_3
    move v1, v0

    :goto_4
    if-eqz v1, :cond_9

    if-nez p1, :cond_8

    .line 306
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    const-wide/16 v5, 0x1f4

    invoke-static {p1, v5, v6}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1300(Lcom/miui/maml/elements/MusicControlScreenElement;J)V

    goto :goto_5

    .line 308
    :cond_8
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v1, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1400(Lcom/miui/maml/elements/MusicControlScreenElement;Landroid/graphics/Bitmap;)V

    .line 312
    :cond_9
    :goto_5
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$900(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    move-result-object p1

    const-string v1, "android.media.metadata.LYRIC"

    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw lyric: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-static {p1}, Lcom/miui/maml/elements/MusicLyricParser;->parseLyric(Ljava/lang/String;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 316
    invoke-virtual {p1}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->decorate()V

    :cond_a
    if-nez p1, :cond_c

    if-eqz v4, :cond_b

    goto :goto_6

    :cond_b
    move v1, v2

    goto :goto_7

    :cond_c
    :goto_6
    move v1, v0

    :goto_7
    if-eqz v1, :cond_d

    .line 320
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v1, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1502(Lcom/miui/maml/elements/MusicControlScreenElement;Lcom/miui/maml/elements/MusicLyricParser$Lyric;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 321
    iget-object v1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v1, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1600(Lcom/miui/maml/elements/MusicControlScreenElement;Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V

    .line 323
    :cond_d
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1500(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    move-result-object v1

    if-eqz v1, :cond_e

    const/high16 v1, 0x41f00000    # 30.0f

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p1, v1}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 325
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$900(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    move-result-object p1

    const-string v1, "android.media.metadata.DURATION"

    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 326
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1700(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/maml/elements/MusicController;->getEstimatedMediaPosition()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long p1, v7, v9

    if-nez p1, :cond_f

    .line 328
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1700(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/elements/MusicController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/maml/elements/MusicController;->getPosition()J

    move-result-wide v7

    .line 330
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duration: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", position: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long p1, v5, v9

    if-ltz p1, :cond_10

    cmp-long p1, v7, v9

    if-gez p1, :cond_11

    :cond_10
    if-eqz v4, :cond_12

    :cond_11
    move v2, v0

    :cond_12
    if-eqz v2, :cond_13

    .line 333
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1, v5, v6, v7, v8}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1800(Lcom/miui/maml/elements/MusicControlScreenElement;JJ)V

    .line 336
    :cond_13
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$900(Lcom/miui/maml/elements/MusicControlScreenElement;)Landroid/media/MediaMetadata;

    move-result-object p1

    const-string v0, "android.media.metadata.USER_RATING"

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getRating(Ljava/lang/String;)Landroid/media/Rating;

    move-result-object p1

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rating: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1900(Lcom/miui/maml/elements/MusicControlScreenElement;Landroid/media/Rating;)V

    .line 342
    iget-boolean p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->mClientChanged:Z

    if-nez p1, :cond_14

    .line 343
    invoke-virtual {p0}, Lcom/miui/maml/elements/MusicControlScreenElement$1;->onClientChange()V

    :cond_14
    return-void
.end method

.method public onClientPlaybackActionUpdate(J)V
    .locals 8

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transportControlFlags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicControlScreenE"

    invoke-static {v1, v0}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-nez v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$100(Lcom/miui/maml/elements/MusicControlScreenElement;)V

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    cmp-long v5, p1, v2

    if-eqz v5, :cond_2

    const-wide/16 v6, 0x207

    and-long/2addr v6, p1

    cmp-long v6, v6, v2

    if-nez v6, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    invoke-static {v0, v6}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$202(Lcom/miui/maml/elements/MusicControlScreenElement;Z)Z

    .line 233
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    if-eqz v5, :cond_3

    const-wide/16 v6, 0x10

    and-long/2addr v6, p1

    cmp-long v6, v6, v2

    if-nez v6, :cond_3

    move v6, v1

    goto :goto_2

    :cond_3
    move v6, v4

    :goto_2
    invoke-static {v0, v6}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$302(Lcom/miui/maml/elements/MusicControlScreenElement;Z)Z

    .line 235
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    if-eqz v5, :cond_4

    const-wide/16 v5, 0x20

    and-long/2addr p1, v5

    cmp-long p1, p1, v2

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v4

    :goto_3
    invoke-static {v0, v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$402(Lcom/miui/maml/elements/MusicControlScreenElement;Z)Z

    .line 237
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    iget-boolean p2, p1, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    if-eqz p2, :cond_8

    .line 238
    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$500(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$200(Lcom/miui/maml/elements/MusicControlScreenElement;)Z

    move-result p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_5

    move-wide v4, v0

    goto :goto_4

    :cond_5
    move-wide v4, v2

    :goto_4
    invoke-virtual {p1, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 239
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$600(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p2}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$300(Lcom/miui/maml/elements/MusicControlScreenElement;)Z

    move-result p2

    if-eqz p2, :cond_6

    move-wide v4, v0

    goto :goto_5

    :cond_6
    move-wide v4, v2

    :goto_5
    invoke-virtual {p1, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 240
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$700(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$400(Lcom/miui/maml/elements/MusicControlScreenElement;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_6

    :cond_7
    move-wide v0, v2

    :goto_6
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_8
    return-void
.end method

.method public onClientPlaybackStateUpdate(I)V
    .locals 1

    .line 246
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/MusicControlScreenElement$1;->onStateUpdate(I)V

    .line 247
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stateUpdate: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MusicControlScreenE"

    invoke-static {p1, p0}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onControllerEmpty()V
    .locals 3

    .line 369
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$1000(Lcom/miui/maml/elements/MusicControlScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 371
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2000(Lcom/miui/maml/elements/MusicControlScreenElement;)V

    :cond_0
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$2300(Lcom/miui/maml/elements/MusicControlScreenElement;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 363
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p0, v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$800(Lcom/miui/maml/elements/MusicControlScreenElement;Z)V

    return-void
.end method

.method protected onStateUpdate(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    move v1, v0

    goto :goto_0

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    const-string v0, "state_play"

    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    .line 258
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    const-string v2, "state_stop"

    invoke-virtual {p1, v2}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    move v3, v1

    move v1, v0

    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    .line 271
    iget-object p0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$1;->this$0:Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-static {p0, v1}, Lcom/miui/maml/elements/MusicControlScreenElement;->access$800(Lcom/miui/maml/elements/MusicControlScreenElement;Z)V

    :cond_2
    return-void
.end method
