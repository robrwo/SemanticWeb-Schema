use utf8;

package SemanticWeb::Schema::Grant;

# ABSTRACT: A grant

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'Grant';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

A grant, typically financial or otherwise quantifiable, of resources. Typically a [[funder]] sponsors some L<SemanticWeb::Schema::MonetaryAmount> to an L<SemanticWeb::Schema::Organization> or L<SemanticWeb::Schema::Person>,
    sometimes not necessarily via a dedicated or long-lived L<SemanticWeb::Schema::Project>, resulting in one or more outputs, or [[fundedItem]]s. For financial sponsorship, indicate the [[funder]] of a L<SemanticWeb::Schema::MonetaryGrant>. For non-financial support, indicate [[sponsor]] of L<SemanticWeb::Schema::Grant>s of resources (e.g. office space).

Grants support  activities directed towards some agreed collective goals, often but not always organized as L<SemanticWeb::Schema::Project>s. Long-lived projects are sometimes sponsored by a variety of grants over time, but it is also common for a project to be associated with a single grant.

The amount of a L<SemanticWeb::Schema::Grant> is represented using [[amount]] as a L<SemanticWeb::Schema::MonetaryAmount>.



=head1 ATTRIBUTES


=head2 C<funded_item>

C<fundedItem>

Indicates something directly or indirectly funded or sponsored through a L<SemanticWeb::Schema::Grant>. See also [[ownershipFundingInfo]].

A funded_item should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BioChemEntity']>

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<InstanceOf['SemanticWeb::Schema::Event']>

=item C<InstanceOf['SemanticWeb::Schema::MedicalEntity']>

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=item C<InstanceOf['SemanticWeb::Schema::Product']>

=back

=head2 C<_has_funded_item>

A predicate for the L</funded_item> attribute.

=cut

has funded_item => (
    is        => 'rw',
    predicate => '_has_funded_item',
    json_ld   => 'fundedItem',
);


=head2 C<funder>



A person or organization that supports (sponsors) something through some
kind of financial contribution.


A funder should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_funder>

A predicate for the L</funder> attribute.

=cut

has funder => (
    is        => 'rw',
    predicate => '_has_funder',
    json_ld   => 'funder',
);


=head2 C<sponsor>



A person or organization that supports a thing through a pledge, promise,
or financial contribution. E.g. a sponsor of a Medical Study or a corporate
sponsor of an event.


A sponsor should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_sponsor>

A predicate for the L</sponsor> attribute.

=cut

has sponsor => (
    is        => 'rw',
    predicate => '_has_sponsor',
    json_ld   => 'sponsor',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
