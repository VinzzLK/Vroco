.class public final Lcom/google/firebase/sessions/SessionLifecycleService;
.super Landroid/app/Service;
.source "SessionLifecycleService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/SessionLifecycleService$MessageHandler;,
        Lcom/google/firebase/sessions/SessionLifecycleService$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/firebase/sessions/SessionLifecycleService$Companion;


# instance fields
.field private final handlerThread:Landroid/os/HandlerThread;

.field private messageHandler:Lcom/google/firebase/sessions/SessionLifecycleService$MessageHandler;

.field private messenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/sessions/SessionLifecycleService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/SessionLifecycleService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/sessions/SessionLifecycleService;->Companion:Lcom/google/firebase/sessions/SessionLifecycleService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FirebaseSessions_HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->handlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method private final getClientCallback(Landroid/content/Intent;)Landroid/os/Messenger;
    .locals 2

    .line 214
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "ClientCallbackMessenger"

    const/16 v1, 0x21

    if-lt p0, v1, :cond_0

    .line 215
    const-class p0, Landroid/os/Messenger;

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Messenger;

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/Messenger;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    const-string v0, "SessionLifecycleService"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p0, "Service bound with null intent. Ignoring."

    .line 191
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 194
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service bound to new client on process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-direct {p0, p1}, Lcom/google/firebase/sessions/SessionLifecycleService;->getClientCallback(Landroid/content/Intent;)Landroid/os/Messenger;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    const/4 v2, 0x0

    .line 197
    invoke-static {v1, v0, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 198
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 199
    iget-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->messageHandler:Lcom/google/firebase/sessions/SessionLifecycleService$MessageHandler;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    :cond_1
    iget-object p0, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->messenger:Landroid/os/Messenger;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public onCreate()V
    .locals 3

    .line 182
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 183
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 184
    new-instance v0, Lcom/google/firebase/sessions/SessionLifecycleService$MessageHandler;

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "handlerThread.looper"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/SessionLifecycleService$MessageHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->messageHandler:Lcom/google/firebase/sessions/SessionLifecycleService$MessageHandler;

    .line 185
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->messageHandler:Lcom/google/firebase/sessions/SessionLifecycleService$MessageHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->messenger:Landroid/os/Messenger;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 205
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 206
    iget-object p0, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method
