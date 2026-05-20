.class public final synthetic Lcom/miui/home/recents/anim/WindowAnimParamsProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->$r8$lambda$j6YQ7T1hSpPCt6ml98yo4St0euY(Lcom/miui/home/launcher/Launcher;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
