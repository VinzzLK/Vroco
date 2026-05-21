.class public Lcom/miui/home/recents/SpecialDeviceFoldManager;
.super Ljava/lang/Object;
.source "SpecialDeviceFoldManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/SpecialDeviceFoldManager$FoldedStateListener;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/miui/home/recents/SpecialDeviceFoldManager;


# instance fields
.field private mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/miui/home/recents/SpecialDeviceFoldManager$FoldedStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/miui/home/recents/SpecialDeviceFoldManager;

    invoke-direct {v0}, Lcom/miui/home/recents/SpecialDeviceFoldManager;-><init>()V

    sput-object v0, Lcom/miui/home/recents/SpecialDeviceFoldManager;->sInstance:Lcom/miui/home/recents/SpecialDeviceFoldManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/SpecialDeviceFoldManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static getInstance()Lcom/miui/home/recents/SpecialDeviceFoldManager;
    .locals 1

    .line 23
    sget-object v0, Lcom/miui/home/recents/SpecialDeviceFoldManager;->sInstance:Lcom/miui/home/recents/SpecialDeviceFoldManager;

    return-object v0
.end method


# virtual methods
.method public addFoldedStateListener(Lcom/miui/home/recents/SpecialDeviceFoldManager$FoldedStateListener;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/miui/home/recents/SpecialDeviceFoldManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object p0, p0, Lcom/miui/home/recents/SpecialDeviceFoldManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getFoldedListeners()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/miui/home/recents/SpecialDeviceFoldManager$FoldedStateListener;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object p0, p0, Lcom/miui/home/recents/SpecialDeviceFoldManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public removeFoldedStateListener(Lcom/miui/home/recents/SpecialDeviceFoldManager$FoldedStateListener;)V
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/recents/SpecialDeviceFoldManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
