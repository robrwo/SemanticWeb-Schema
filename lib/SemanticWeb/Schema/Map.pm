use utf8;

package SemanticWeb::Schema::Map;

# ABSTRACT: A map.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Map';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

A map.




=head1 ATTRIBUTES


=head2 C<map_type>

C<mapType>

Indicates the kind of Map, from the MapCategoryType Enumeration.


A map_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MapCategoryType']>

=back

=head2 C<_has_map_type>

A predicate for the L</map_type> attribute.

=cut

has map_type => (
    is        => 'rw',
    predicate => '_has_map_type',
    json_ld   => 'mapType',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
