.class public final synthetic Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/miui/home/settings/preference/ListPreference;

.field public final synthetic f$4:Lcom/miui/home/settings/preference/ListPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Lcom/miui/home/settings/preference/ListPreference;Lcom/miui/home/settings/preference/ListPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;

    iput-object p2, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda0;->f$3:Lcom/miui/home/settings/preference/ListPreference;

    iput-object p5, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda0;->f$4:Lcom/miui/home/settings/preference/ListPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;

    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda0;->f$3:Lcom/miui/home/settings/preference/ListPreference;

    iget-object v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda0;->f$4:Lcom/miui/home/settings/preference/ListPreference;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->$r8$lambda$zYtudxheCrgHF9LfV48IYI0W6b8(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Lcom/miui/home/settings/preference/ListPreference;Lcom/miui/home/settings/preference/ListPreference;Landroid/content/DialogInterface;I)V

    return-void
.end method
