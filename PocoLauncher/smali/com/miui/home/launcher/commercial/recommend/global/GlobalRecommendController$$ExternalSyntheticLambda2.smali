.class public final synthetic Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;

.field public final synthetic f$1:Lcom/miui/home/launcher/FolderInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController$$ExternalSyntheticLambda2;->f$1:Lcom/miui/home/launcher/FolderInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController$$ExternalSyntheticLambda2;->f$1:Lcom/miui/home/launcher/FolderInfo;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;->$r8$lambda$iacGsiprSwbhZbE8SOS-jkxOYuU(Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;Lcom/miui/home/launcher/FolderInfo;Ljava/lang/Void;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
