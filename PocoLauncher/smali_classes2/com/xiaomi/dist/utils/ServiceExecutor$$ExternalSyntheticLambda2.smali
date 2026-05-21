.class public final synthetic Lcom/xiaomi/dist/utils/ServiceExecutor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/dist/utils/ServiceExecutor;

.field public final synthetic f$1:Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;

.field public final synthetic f$2:Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/dist/utils/ServiceExecutor;Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/utils/ServiceExecutor$$ExternalSyntheticLambda2;->f$0:Lcom/xiaomi/dist/utils/ServiceExecutor;

    iput-object p2, p0, Lcom/xiaomi/dist/utils/ServiceExecutor$$ExternalSyntheticLambda2;->f$1:Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;

    iput-object p3, p0, Lcom/xiaomi/dist/utils/ServiceExecutor$$ExternalSyntheticLambda2;->f$2:Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor$$ExternalSyntheticLambda2;->f$0:Lcom/xiaomi/dist/utils/ServiceExecutor;

    iget-object v1, p0, Lcom/xiaomi/dist/utils/ServiceExecutor$$ExternalSyntheticLambda2;->f$1:Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;

    iget-object p0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor$$ExternalSyntheticLambda2;->f$2:Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;

    invoke-static {v0, v1, p0}, Lcom/xiaomi/dist/utils/ServiceExecutor;->$r8$lambda$thIANN-b5yZcjaBQ8wOhHNo8Zl8(Lcom/xiaomi/dist/utils/ServiceExecutor;Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;)V

    return-void
.end method
