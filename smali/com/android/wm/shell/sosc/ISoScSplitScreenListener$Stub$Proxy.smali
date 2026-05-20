.class Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISoScSplitScreenListener.java"

# interfaces
.implements Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
