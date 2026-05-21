.class Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;
.super Ljava/lang/Object;
.source "RecommendController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/commercial/recommend/RecommendController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/commercial/recommend/RecommendController;


# direct methods
.method public static synthetic $r8$lambda$NOyP3K_eg2zczeUAEeHsKWfCrck(Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;->lambda$run$0(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;->this$0:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)V
    .locals 2

    .line 426
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;->this$0:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-wide v0, v0, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->access$100(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;J)Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->add(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;->this$0:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->clearContents()V

    .line 424
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;->this$0:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    iget-object v0, v0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendInfoList:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/commercial/recommend/RecommendController$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$2$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;)V

    .line 425
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 429
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;->this$0:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->preloadAndRefresh()V

    return-void
.end method
