.class public final synthetic Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/settings/preference/ListPreference;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/settings/preference/ListPreference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/settings/preference/ListPreference;

    iput-object p2, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->$r8$lambda$tZpy8H52FtWH_s8uETZzYAOI8Mc(Lcom/miui/home/settings/preference/ListPreference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/DialogInterface;)V

    return-void
.end method
