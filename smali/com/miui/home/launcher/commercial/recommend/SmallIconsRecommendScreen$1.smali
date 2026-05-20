.class Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "SmallIconsRecommendScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->getAlphaAnimConfig(Z)Lmiuix/animation/base/AnimConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;Z)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen$1;->this$0:Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;

    iput-boolean p2, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen$1;->val$show:Z

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 205
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 206
    iget-boolean p1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen$1;->val$show:Z

    if-eqz p1, :cond_0

    .line 207
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/launcher/common/messages/FolderRecommendScreenAnimStateMessage;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/miui/home/launcher/common/messages/FolderRecommendScreenAnimStateMessage;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen$1;->this$0:Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 210
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/launcher/common/messages/FolderRecommendScreenAnimStateMessage;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/miui/home/launcher/common/messages/FolderRecommendScreenAnimStateMessage;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 216
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 217
    sget-object p1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findBy(Ljava/util/Collection;Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 219
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen$1;->this$0:Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;

    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->recommendScreenAlpha:F

    :cond_0
    return-void
.end method
