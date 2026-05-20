.class public final synthetic Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda82;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda82;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-boolean p2, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda82;->f$1:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda82;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda82;->f$1:Z

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/Launcher;->$r8$lambda$ZSdhq4f_hWEjZ31dp9fJ_vmiKQo(Lcom/miui/home/launcher/Launcher;ZLjava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
