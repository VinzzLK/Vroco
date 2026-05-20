.class public Lcom/miui/home/recents/util/TraceUtils;
.super Ljava/lang/Object;
.source "TraceUtils.java"


# direct methods
.method public static synthetic $r8$lambda$4m2HEc-oYGGcal7Y6xpG7NIRo7A()V
    .locals 0

    invoke-static {}, Lcom/miui/home/recents/util/TraceUtils;->lambda$endSection$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$VslNnj1m5xkIS9sjvGiDZlsl2zc(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/util/TraceUtils;->lambda$beginSection$0(Ljava/lang/String;)V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 1

    .line 13
    new-instance v0, Lcom/miui/home/recents/util/TraceUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/util/TraceUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static endSection()V
    .locals 1

    .line 19
    sget-object v0, Lcom/miui/home/recents/util/TraceUtils$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/recents/util/TraceUtils$$ExternalSyntheticLambda1;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$beginSection$0(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$endSection$1()V
    .locals 0

    .line 19
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
