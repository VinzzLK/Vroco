.class public Lcom/miui/maml/ScreenElementRoot$UnlockedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ScreenElementRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnlockedReceiver"
.end annotation


# instance fields
.field private mVariableBinderManagerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/data/VariableBinderManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/VariableBinderManager;)V
    .locals 1

    .line 320
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 321
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot$UnlockedReceiver;->mVariableBinderManagerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 326
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 327
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot$UnlockedReceiver;->mVariableBinderManagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/data/VariableBinderManager;

    if-eqz p0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinderManager;->binderStartQuery()V

    :cond_0
    const-string p0, "ScreenElementRoot"

    const-string p1, "user unlocked, start query"

    .line 331
    invoke-static {p0, p1}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
