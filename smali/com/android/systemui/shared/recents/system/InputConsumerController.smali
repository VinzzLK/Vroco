.class public Lcom/android/systemui/shared/recents/system/InputConsumerController;
.super Ljava/lang/Object;
.source "InputConsumerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/system/InputConsumerController$InputEventReceiver;,
        Lcom/android/systemui/shared/recents/system/InputConsumerController$RegistrationListener;,
        Lcom/android/systemui/shared/recents/system/InputConsumerController$TouchListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InputConsumerController"


# instance fields
.field private mInputEventReceiver:Lcom/android/systemui/shared/recents/system/InputConsumerController$InputEventReceiver;

.field private mListener:Lcom/android/systemui/shared/recents/system/InputConsumerController$TouchListener;

.field private final mName:Ljava/lang/String;

.field private mRegistrationListener:Lcom/android/systemui/shared/recents/system/InputConsumerController$RegistrationListener;

.field private final mToken:Landroid/os/IBinder;

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/IWindowManager;Ljava/lang/String;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    .line 103
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController;->mToken:Landroid/os/IBinder;

    .line 104
    iput-object p2, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController;->mName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/recents/system/InputConsumerController;)Lcom/android/systemui/shared/recents/system/InputConsumerController$TouchListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController;->mListener:Lcom/android/systemui/shared/recents/system/InputConsumerController$TouchListener;

    return-object p0
.end method

.method private destroyInputConsumerCompat(Ljava/lang/String;Landroid/os/IBinder;ILandroid/view/IWindowManager;)V
    .locals 5

    .line 191
    :try_start_0
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    const-class p1, Ljava/lang/Void;

    const-string p4, "destroyInputConsumer"

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/os/IBinder;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 193
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    .line 192
    invoke-static {p0, p1, p4, v1, v0}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 196
    :cond_0
    invoke-interface {p4, p1, p3}, Landroid/view/IWindowManager;->destroyInputConsumer(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 199
    sget-object p1, Lcom/android/systemui/shared/recents/system/InputConsumerController;->TAG:Ljava/lang/String;

    const-string p2, "Failed to destroy input consumer"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static getPipInputConsumer()Lcom/android/systemui/shared/recents/system/InputConsumerController;
    .locals 3

    .line 111
    new-instance v0, Lcom/android/systemui/shared/recents/system/InputConsumerController;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    const-string v2, "pip_input_consumer"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/shared/recents/system/InputConsumerController;-><init>(Landroid/view/IWindowManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getRecentsAnimationInputConsumer()Lcom/android/systemui/shared/recents/system/InputConsumerController;
    .locals 3

    .line 119
    new-instance v0, Lcom/android/systemui/shared/recents/system/InputConsumerController;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    const-string v2, "recents_animation_input_consumer"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/shared/recents/system/InputConsumerController;-><init>(Landroid/view/IWindowManager;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/systemui/shared/recents/system/InputConsumerController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "registered="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController;->mInputEventReceiver:Lcom/android/systemui/shared/recents/system/InputConsumerController$InputEventReceiver;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isRegistered()Z
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController;->mInputEventReceiver:Lcom/android/systemui/shared/recents/system/InputConsumerController$InputEventReceiver;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerInputConsumer()V
    .locals 5

    .line 153
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController;->mInputEventReceiver:Lcom/android/systemui/shared/recents/system/InputConsumerController$InputEventReceiver;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    .line 155
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/systemui/shared/recents/system/InputConsumerController;->destroyInputConsumerCompat(Ljava/lang/String;Landroid/os/IBinder;ILandroid/view/IWindowManager;)V

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController;->mName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/view/IWindowManager;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/view/InputChannel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 159
    sget-object v2, Lcom/android/systemui/shared/recents/system/InputConsumerController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to create input consumer"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    :goto_0
    new-instance v1, Lcom/android/systemui/shared/recents/system/InputConsumerController$InputEventReceiver;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/android/systemui/shared/recents/system/InputConsumerController$InputEventReceiver;-><init>(Lcom/android/systemui/shared/recents/system/InputConsumerController;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController;->mInputEventReceiver:Lcom/android/systemui/shared/recents/system/InputConsumerController$InputEventReceiver;

    .line 162
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController;->mRegistrationListener:Lcom/android/systemui/shared/recents/system/InputConsumerController$RegistrationListener;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 163
    invoke-interface {p0, v0}, Lcom/android/systemui/shared/recents/system/InputConsumerController$RegistrationListener;->onRegistrationChanged(Z)V

    :cond_0
    return-void
.end method

.method public setRegistrationListener(Lcom/android/systemui/shared/recents/system/InputConsumerController$RegistrationListener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController;->mRegistrationListener:Lcom/android/systemui/shared/recents/system/InputConsumerController$RegistrationListener;

    if-eqz p1, :cond_1

    .line 136
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController;->mInputEventReceiver:Lcom/android/systemui/shared/recents/system/InputConsumerController$InputEventReceiver;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1, p0}, Lcom/android/systemui/shared/recents/system/InputConsumerController$RegistrationListener;->onRegistrationChanged(Z)V

    :cond_1
    return-void
.end method

.method public setTouchListener(Lcom/android/systemui/shared/recents/system/InputConsumerController$TouchListener;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController;->mListener:Lcom/android/systemui/shared/recents/system/InputConsumerController$TouchListener;

    return-void
.end method

.method public unregisterInputConsumer()V
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController;->mInputEventReceiver:Lcom/android/systemui/shared/recents/system/InputConsumerController$InputEventReceiver;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/systemui/shared/recents/system/InputConsumerController;->destroyInputConsumerCompat(Ljava/lang/String;Landroid/os/IBinder;ILandroid/view/IWindowManager;)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController;->mInputEventReceiver:Lcom/android/systemui/shared/recents/system/InputConsumerController$InputEventReceiver;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/InputConsumerController$InputEventReceiver;->dispose()V

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController;->mInputEventReceiver:Lcom/android/systemui/shared/recents/system/InputConsumerController$InputEventReceiver;

    .line 176
    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController;->mListener:Lcom/android/systemui/shared/recents/system/InputConsumerController$TouchListener;

    .line 177
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController;->mRegistrationListener:Lcom/android/systemui/shared/recents/system/InputConsumerController$RegistrationListener;

    if-eqz p0, :cond_0

    .line 178
    invoke-interface {p0, v3}, Lcom/android/systemui/shared/recents/system/InputConsumerController$RegistrationListener;->onRegistrationChanged(Z)V

    :cond_0
    return-void
.end method
