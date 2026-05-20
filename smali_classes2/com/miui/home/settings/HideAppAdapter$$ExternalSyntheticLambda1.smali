.class public final synthetic Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/AppInfo;

.field public final synthetic f$1:Lcom/miui/home/settings/HideAppAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/settings/HideAppAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/AppInfo;

    iput-object p2, p0, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/miui/home/settings/HideAppAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/AppInfo;

    iget-object p0, p0, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/miui/home/settings/HideAppAdapter;

    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/settings/HideAppAdapter;->$r8$lambda$jZvUqQaS9YOS_BHXN_-50tOynSk(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/settings/HideAppAdapter;Landroid/content/DialogInterface;I)V

    return-void
.end method
