.class public final synthetic Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$$ExternalSyntheticLambda1;

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

    invoke-static {p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->$r8$lambda$gHDNNGWOt7QeUu-0R9btLdnRsv4(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method
