.class public final synthetic Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/settings/HideAppAdapter;

.field public final synthetic f$1:Lcom/miui/home/launcher/AppInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/settings/HideAppAdapter;Lcom/miui/home/launcher/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda3;->f$0:Lcom/miui/home/settings/HideAppAdapter;

    iput-object p2, p0, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda3;->f$1:Lcom/miui/home/launcher/AppInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda3;->f$0:Lcom/miui/home/settings/HideAppAdapter;

    iget-object p0, p0, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda3;->f$1:Lcom/miui/home/launcher/AppInfo;

    invoke-static {v0, p0}, Lcom/miui/home/settings/HideAppAdapter;->$r8$lambda$ZTpfkQDxA-HyHpRRomutGjS3sNs(Lcom/miui/home/settings/HideAppAdapter;Lcom/miui/home/launcher/AppInfo;)V

    return-void
.end method
