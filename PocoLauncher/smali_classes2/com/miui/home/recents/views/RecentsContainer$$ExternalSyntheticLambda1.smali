.class public final synthetic Lcom/miui/home/recents/views/RecentsContainer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(ZLandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsContainer$$ExternalSyntheticLambda1;->f$0:Z

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer$$ExternalSyntheticLambda1;->f$0:Z

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/miui/home/recents/views/RecentsContainer;->$r8$lambda$oCBmKgcWgdNdwZLM2xPcMXom2bo(ZLandroid/content/Context;)V

    return-void
.end method
