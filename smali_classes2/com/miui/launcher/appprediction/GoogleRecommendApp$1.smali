.class Lcom/miui/launcher/appprediction/GoogleRecommendApp$1;
.super Ljava/lang/Object;
.source "GoogleRecommendApp.java"

# interfaces
.implements Landroid/app/prediction/AppPredictor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/launcher/appprediction/GoogleRecommendApp;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/launcher/appprediction/GoogleRecommendApp;


# direct methods
.method public static synthetic $r8$lambda$HA_2ljbX7SE-cZSy8_lZyWn3H88(Landroid/app/prediction/AppTarget;Landroid/app/prediction/AppTarget;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/launcher/appprediction/GoogleRecommendApp$1;->lambda$onTargetsAvailable$0(Landroid/app/prediction/AppTarget;Landroid/app/prediction/AppTarget;)I

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/miui/launcher/appprediction/GoogleRecommendApp;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp$1;->this$0:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onTargetsAvailable$0(Landroid/app/prediction/AppTarget;Landroid/app/prediction/AppTarget;)I
    .locals 0

    .line 55
    invoke-virtual {p0}, Landroid/app/prediction/AppTarget;->getRank()I

    move-result p0

    invoke-virtual {p1}, Landroid/app/prediction/AppTarget;->getRank()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public onTargetsAvailable(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)V"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp$1;->this$0:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

    invoke-static {v0}, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->access$000(Lcom/miui/launcher/appprediction/GoogleRecommendApp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dataChanged\uff1a"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    sget-object v1, Lcom/miui/launcher/appprediction/GoogleRecommendApp$1$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/launcher/appprediction/GoogleRecommendApp$1$$ExternalSyntheticLambda0;

    invoke-interface {p1, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 56
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/prediction/AppTarget;

    .line 57
    iget-object v2, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp$1;->this$0:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

    invoke-static {v2}, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->access$000(Lcom/miui/launcher/appprediction/GoogleRecommendApp;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/miui/launcher/appprediction/AppPredictionInfo;

    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/miui/launcher/appprediction/AppPredictionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getRank()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "];"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppPredictionTag"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object p1, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp$1;->this$0:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

    invoke-static {p1}, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->access$100(Lcom/miui/launcher/appprediction/GoogleRecommendApp;)Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 62
    iget-object p1, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp$1;->this$0:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

    invoke-static {p1}, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->access$200(Lcom/miui/launcher/appprediction/GoogleRecommendApp;)Lcom/miui/launcher/appprediction/GoogleRecommendApp$DataChangedRunnable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 63
    iget-object p1, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp$1;->this$0:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

    invoke-static {p1}, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->access$300(Lcom/miui/launcher/appprediction/GoogleRecommendApp;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp$1;->this$0:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

    invoke-static {v0}, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->access$200(Lcom/miui/launcher/appprediction/GoogleRecommendApp;)Lcom/miui/launcher/appprediction/GoogleRecommendApp$DataChangedRunnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp$1;->this$0:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

    new-instance v0, Lcom/miui/launcher/appprediction/GoogleRecommendApp$DataChangedRunnable;

    invoke-static {p1}, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->access$100(Lcom/miui/launcher/appprediction/GoogleRecommendApp;)Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/launcher/appprediction/GoogleRecommendApp$DataChangedRunnable;-><init>(Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;)V

    invoke-static {p1, v0}, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->access$202(Lcom/miui/launcher/appprediction/GoogleRecommendApp;Lcom/miui/launcher/appprediction/GoogleRecommendApp$DataChangedRunnable;)Lcom/miui/launcher/appprediction/GoogleRecommendApp$DataChangedRunnable;

    .line 66
    iget-object p1, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp$1;->this$0:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

    invoke-static {p1}, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->access$300(Lcom/miui/launcher/appprediction/GoogleRecommendApp;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp$1;->this$0:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

    invoke-static {p0}, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->access$200(Lcom/miui/launcher/appprediction/GoogleRecommendApp;)Lcom/miui/launcher/appprediction/GoogleRecommendApp$DataChangedRunnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
