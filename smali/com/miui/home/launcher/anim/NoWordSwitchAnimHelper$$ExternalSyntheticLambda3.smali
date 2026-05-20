.class public final synthetic Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/miui/home/launcher/Workspace;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;ZLcom/miui/home/launcher/Workspace;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Runnable;

    iput-boolean p2, p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$$ExternalSyntheticLambda3;->f$1:Z

    iput-object p3, p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$$ExternalSyntheticLambda3;->f$2:Lcom/miui/home/launcher/Workspace;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Runnable;

    iget-boolean v1, p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$$ExternalSyntheticLambda3;->f$1:Z

    iget-object p0, p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$$ExternalSyntheticLambda3;->f$2:Lcom/miui/home/launcher/Workspace;

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->$r8$lambda$yrN2TQC7Gt5B7j1WnFlKXob6dMM(Ljava/lang/Runnable;ZLcom/miui/home/launcher/Workspace;)V

    return-void
.end method
