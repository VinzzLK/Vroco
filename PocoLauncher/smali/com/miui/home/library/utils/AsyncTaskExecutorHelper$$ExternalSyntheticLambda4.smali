.class public final synthetic Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Runnable;

    check-cast p1, Ljava/lang/Void;

    invoke-static {p0, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->$r8$lambda$bb9N4U7lk281VM6otl3QQaXXuX4(Ljava/lang/Runnable;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
