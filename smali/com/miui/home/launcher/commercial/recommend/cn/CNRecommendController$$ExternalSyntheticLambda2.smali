.class public final synthetic Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;

.field public final synthetic f$1:Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda2;->f$1:Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    iput p3, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda2;->f$1:Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    iget p0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda2;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->$r8$lambda$FpXWlTnj_zpfPCR05nwIueJF19c(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V

    return-void
.end method
