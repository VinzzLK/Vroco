.class public final synthetic Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/settings/preference/ListPreference;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/settings/preference/ListPreference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/settings/preference/ListPreference;

    iput-object p2, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->$r8$lambda$SMDrhILE8wcAW_TYpZJF0-gzkbU(Lcom/miui/home/settings/preference/ListPreference;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
