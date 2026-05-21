.class public Lcom/google/firebase/provider/FirebaseInitProvider;
.super Landroid/content/ContentProvider;
.source "FirebaseInitProvider.java"


# static fields
.field private static currentlyInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static startupTime:Lcom/google/firebase/StartupTime;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    invoke-static {}, Lcom/google/firebase/StartupTime;->now()Lcom/google/firebase/StartupTime;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/provider/FirebaseInitProvider;->startupTime:Lcom/google/firebase/StartupTime;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/google/firebase/provider/FirebaseInitProvider;->currentlyInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static getStartupTime()Lcom/google/firebase/StartupTime;
    .locals 1

    .line 44
    sget-object v0, Lcom/google/firebase/provider/FirebaseInitProvider;->startupTime:Lcom/google/firebase/StartupTime;

    return-object v0
.end method

.method public static isCurrentlyInitializing()Z
    .locals 1

    .line 49
    sget-object v0, Lcom/google/firebase/provider/FirebaseInitProvider;->currentlyInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
