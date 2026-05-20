.class public final synthetic Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/CompoundButton;

.field public final synthetic f$1:Lcom/miui/home/launcher/AppInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/CompoundButton;Lcom/miui/home/launcher/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda0;->f$0:Landroid/widget/CompoundButton;

    iput-object p2, p0, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/AppInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda0;->f$0:Landroid/widget/CompoundButton;

    iget-object p0, p0, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/AppInfo;

    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/settings/HideAppAdapter;->$r8$lambda$iP0V2NuAtNg9j25C_084AxNikOM(Landroid/widget/CompoundButton;Lcom/miui/home/launcher/AppInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method
