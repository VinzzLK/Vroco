.class public interface abstract Lcom/android/wm/shell/pip/IPip;
.super Ljava/lang/Object;
.source "IPip.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/IPip$Stub;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidV()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.wm.shell.common.pip.IPip"

    goto :goto_0

    :cond_0
    const-string v0, "com.android.wm.shell.pip.IPip"

    .line 109
    :goto_0
    sput-object v0, Lcom/android/wm/shell/pip/IPip;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract setPipAnimationTypeToAlpha()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
