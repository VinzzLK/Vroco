.class public final synthetic Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda67;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda67;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda67;->f$0:Z

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/Launcher;->$r8$lambda$yEL1V2GIg9MPT5le7VNXHLb7l7Q(ZLandroid/view/ViewGroup;)V

    return-void
.end method
