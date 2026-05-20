.class public final synthetic Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;

.field public final synthetic f$1:Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    iput p3, p0, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    iget p0, p0, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;->$r8$lambda$KRrMaqOfTJxB3Jvs_9R8C-xT2hA(Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V

    return-void
.end method
