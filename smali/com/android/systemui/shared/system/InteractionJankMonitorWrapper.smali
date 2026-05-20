.class public final Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;
.super Ljava/lang/Object;
.source "InteractionJankMonitorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper$InstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InteractionJankMonitorWrapper"


# instance fields
.field private mDefaultViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper$1;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;-><init>()V

    return-void
.end method

.method public static begin(Landroid/view/View;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    return-void
.end method

.method public static begin(Landroid/view/View;IJ)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-static {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p0

    .line 134
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTimeout(J)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p0

    .line 135
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    return-void
.end method

.method public static begin(Landroid/view/View;ILjava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-static {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p0

    .line 149
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 150
    invoke-virtual {p0, p2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 152
    :cond_1
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    return-void
.end method

.method public static cancel(I)V
    .locals 1

    .line 168
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    return-void
.end method

.method public static end(I)V
    .locals 1

    .line 161
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;
    .locals 1

    .line 52
    invoke-static {}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper$InstanceHolder;->access$100()Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public beginWithDefaultView(I)V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->mDefaultViewRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public beginWithDefaultView(IJ)V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->mDefaultViewRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method public beginWithDefaultView(ILjava/lang/String;)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->mDefaultViewRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 93
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeCallbacksAndMessagesOfWorkerHandler()V
    .locals 3

    .line 102
    :try_start_0
    const-class p0, Lcom/android/internal/jank/InteractionJankMonitor;

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    const-string v1, "mWorker"

    const-class v2, Landroid/os/Handler;

    .line 103
    invoke-static {v2}, Lcom/miui/launcher/utils/ReflectUtils;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-static {p0, v0, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "InteractionJankMonitorWrapper"

    const-string v1, "removeCallbacksAndMessagesOfWorkerHandler failed"

    .line 108
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setDefaultViewForJankMonitor(Landroid/view/View;)V
    .locals 1

    .line 60
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->mDefaultViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method
