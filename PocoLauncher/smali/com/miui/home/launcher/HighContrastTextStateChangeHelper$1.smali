.class Lcom/miui/home/launcher/HighContrastTextStateChangeHelper$1;
.super Ljava/lang/Object;
.source "HighContrastTextStateChangeHelper.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->createHighContrastTextStateChangeListenerProxy(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final hashCode:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;


# direct methods
.method public static synthetic $r8$lambda$ZUjhF9aWwP9i2XMhvI6ueyrnW4Q(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper$1;->lambda$invoke$0(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;)V
    .locals 1

    .line 94
    iput-object p1, p0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper$1;->this$0:Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 96
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper$1;->hashCode:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private static synthetic lambda$invoke$0(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onHighContrastTextStateChanged()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 99
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method.getName is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HighContrastTextStateChangeHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper$1;->this$0:Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->getHighContrastTextStateChangedMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 102
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v1

    .line 106
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper$1;->this$0:Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;

    iget-object p0, p0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper$1$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    const-string v0, "hashCode"

    .line 107
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    iget-object p0, p0, Lcom/miui/home/launcher/HighContrastTextStateChangeHelper$1;->hashCode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "equals"

    .line 109
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz p3, :cond_4

    .line 110
    array-length p0, p3

    const/4 p2, 0x1

    if-ne p0, p2, :cond_4

    const/4 p0, 0x0

    .line 111
    aget-object p3, p3, p0

    if-ne p1, p3, :cond_3

    goto :goto_0

    :cond_3
    move p2, p0

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 113
    :cond_4
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_5
    :goto_1
    return-object v1
.end method
