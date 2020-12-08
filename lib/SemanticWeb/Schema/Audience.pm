use utf8;

package SemanticWeb::Schema::Audience;

# ABSTRACT: Intended audience for an item, i

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'Audience';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.1.1';

=encoding utf8

=head1 DESCRIPTION

Intended audience for an item, i.e. the group for whom the item was
created.




=head1 ATTRIBUTES


=head2 C<audience_type>

C<audienceType>

The target group associated with a given audience (e.g. veterans, car
owners, musicians, etc.).


A audience_type should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_audience_type>

A predicate for the L</audience_type> attribute.

=cut

has audience_type => (
    is        => 'rw',
    predicate => '_has_audience_type',
    json_ld   => 'audienceType',
);


=head2 C<geographic_area>

C<geographicArea>

The geographic area associated with the audience.


A geographic_area should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AdministrativeArea']>

=back

=head2 C<_has_geographic_area>

A predicate for the L</geographic_area> attribute.

=cut

has geographic_area => (
    is        => 'rw',
    predicate => '_has_geographic_area',
    json_ld   => 'geographicArea',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
