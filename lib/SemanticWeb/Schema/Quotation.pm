use utf8;

package SemanticWeb::Schema::Quotation;

# ABSTRACT: A quotation

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Quotation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.1';

=encoding utf8

=head1 DESCRIPTION

A quotation. Often but not necessarily from some written work, attributable to a real world author and - if associated with a fictional character - to any fictional Person. Use [[isBasedOn]] to link to source/origin. The [[recordedIn]] property can be used to reference a Quotation from an L<SemanticWeb::Schema::Event>.



=head1 ATTRIBUTES


=head2 C<spoken_by_character>

C<spokenByCharacter>

The (e.g. fictional) character, Person or Organization to whom the
quotation is attributed within the containing CreativeWork.


A spoken_by_character should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_spoken_by_character>

A predicate for the L</spoken_by_character> attribute.

=cut

has spoken_by_character => (
    is        => 'rw',
    predicate => '_has_spoken_by_character',
    json_ld   => 'spokenByCharacter',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
