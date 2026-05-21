.class Lmiui/app/MultiWindowCallBackUtils$1;
.super Lmiui/app/IIsSupportMultiWindow$Stub;
.source "MultiWindowCallBackUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/MultiWindowCallBackUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lmiui/app/IIsSupportMultiWindow$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchiIsSupportFreeFormChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    invoke-static {}, Lmiui/app/MultiWindowCallBackUtils;->access$000()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/MultiWindowCallBackUtils$IsSupportFreeFormChanged;

    .line 21
    invoke-interface {v0, p1}, Lmiui/app/MultiWindowCallBackUtils$IsSupportFreeFormChanged;->isSupportFreeFormChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchiIsSupportSplitScreenChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    invoke-static {}, Lmiui/app/MultiWindowCallBackUtils;->access$100()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/MultiWindowCallBackUtils$IsSupportSplitScreenChanged;

    .line 28
    invoke-interface {v0, p1}, Lmiui/app/MultiWindowCallBackUtils$IsSupportSplitScreenChanged;->isSupportSplitScreenChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
