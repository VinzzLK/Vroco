.class public final synthetic Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda28;->f$0:Lcom/miui/home/launcher/Launcher;

    iput p2, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda28;->f$1:I

    iput-object p3, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda28;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda28;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda28;->f$0:Lcom/miui/home/launcher/Launcher;

    iget v1, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda28;->f$1:I

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda28;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda28;->f$3:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, p0}, Lcom/miui/home/launcher/Launcher;->$r8$lambda$Yb4z8Aa6k_btNLXXhcwJQYFPPpc(Lcom/miui/home/launcher/Launcher;ILjava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
