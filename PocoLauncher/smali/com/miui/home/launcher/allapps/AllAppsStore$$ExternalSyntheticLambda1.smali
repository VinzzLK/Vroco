.class public final synthetic Lcom/miui/home/launcher/allapps/AllAppsStore$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/miui/home/launcher/allapps/AllAppsStore$IconAction;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/AppInfo;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/AppInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsStore$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/AppInfo;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsStore$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/AppInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsStore$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->$r8$lambda$772lMWXq3_UmCMEMA9JZKlTLHQM(Lcom/miui/home/launcher/AppInfo;Ljava/lang/String;Lcom/miui/home/launcher/ShortcutIcon;)V

    return-void
.end method
