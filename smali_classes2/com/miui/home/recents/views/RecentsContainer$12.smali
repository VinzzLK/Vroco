.class Lcom/miui/home/recents/views/RecentsContainer$12;
.super Ljava/lang/Object;
.source "RecentsContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/RecentsContainer;->killProcess(Lcom/android/systemui/shared/recents/model/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/RecentsContainer;

.field final synthetic val$task:Lcom/android/systemui/shared/recents/model/Task;


# direct methods
.method public static synthetic $r8$lambda$hZnCu-0955RhMOwnMIzek-0MbvQ(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/views/RecentsContainer$12;->lambda$run$0(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/recents/views/RecentsContainer;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    .line 1281
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$12;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer$12;->val$task:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$run$0(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 2

    .line 1285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doSwapUPClean : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RecentsContainer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1284
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer$12;->val$task:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->doSwapUPClean(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 1285
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer$12;->val$task:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v1, Lcom/miui/home/recents/views/RecentsContainer$12$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/RecentsContainer$12$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
