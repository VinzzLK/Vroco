.class public Lcom/miui/miuiwidget/servicedelivery/animation/SimpleFolmeTransitionListeners;
.super Ljava/lang/Object;
.source "SimpleFolmeTransitionListeners.java"


# static fields
.field private static TAG:Ljava/lang/String; = "SimpleFolmeTransitionListeners"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 7
    sget-object v0, Lcom/miui/miuiwidget/servicedelivery/animation/SimpleFolmeTransitionListeners;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static createOnCompleteListener(Ljava/lang/Runnable;)Lmiuix/animation/listener/TransitionListener;
    .locals 1

    const-string v0, ""

    .line 14
    invoke-static {v0, p0}, Lcom/miui/miuiwidget/servicedelivery/animation/SimpleFolmeTransitionListeners;->createOnCompleteListener(Ljava/lang/String;Ljava/lang/Runnable;)Lmiuix/animation/listener/TransitionListener;

    move-result-object p0

    return-object p0
.end method

.method public static createOnCompleteListener(Ljava/lang/String;Ljava/lang/Runnable;)Lmiuix/animation/listener/TransitionListener;
    .locals 1

    .line 19
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/animation/SimpleFolmeTransitionListeners$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/miuiwidget/servicedelivery/animation/SimpleFolmeTransitionListeners$1;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-object v0
.end method
