.class final Lcom/miui/home/safemode/model/AppViewModel$loadApps$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AppViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/safemode/model/AppViewModel;->loadApps(Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.home.safemode.model.AppViewModel"
    f = "AppViewModel.kt"
    l = {
        0x7c
    }
    m = "loadApps"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/miui/home/safemode/model/AppViewModel;


# direct methods
.method constructor <init>(Lcom/miui/home/safemode/model/AppViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/safemode/model/AppViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/miui/home/safemode/model/AppViewModel$loadApps$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/home/safemode/model/AppViewModel$loadApps$1;->this$0:Lcom/miui/home/safemode/model/AppViewModel;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/miui/home/safemode/model/AppViewModel$loadApps$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/miui/home/safemode/model/AppViewModel$loadApps$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/miui/home/safemode/model/AppViewModel$loadApps$1;->label:I

    iget-object p1, p0, Lcom/miui/home/safemode/model/AppViewModel$loadApps$1;->this$0:Lcom/miui/home/safemode/model/AppViewModel;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lcom/miui/home/safemode/model/AppViewModel;->loadApps(Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
