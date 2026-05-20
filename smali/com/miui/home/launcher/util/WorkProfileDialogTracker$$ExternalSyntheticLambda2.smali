.class public final synthetic Lcom/miui/home/launcher/util/WorkProfileDialogTracker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/util/WorkProfileDialogTracker$$ExternalSyntheticLambda2;->f$0:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/util/WorkProfileDialogTracker$$ExternalSyntheticLambda2;->f$0:Lmiuix/appcompat/app/AlertDialog;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/util/WorkProfileDialogTracker;->$r8$lambda$wzzmh3rReQ4SY2u34q_Y7WkefO0(Lmiuix/appcompat/app/AlertDialog;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method
