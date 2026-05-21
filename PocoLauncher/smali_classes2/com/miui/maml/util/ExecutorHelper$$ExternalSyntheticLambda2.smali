.class public final synthetic Lcom/miui/maml/util/ExecutorHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/maml/util/ExecutorHelper$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/maml/util/ExecutorHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/miui/maml/util/ExecutorHelper$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/miui/maml/util/ExecutorHelper$$ExternalSyntheticLambda2;->INSTANCE:Lcom/miui/maml/util/ExecutorHelper$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p1}, Lcom/miui/maml/util/ExecutorHelper;->$r8$lambda$Z_tcLEemYABDedblhg_Kgdsj0wE(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method
