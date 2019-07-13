use utf8;

package SemanticWeb::Schema::Artery;

# ABSTRACT: A type of blood vessel that specifically carries blood away from the heart.

use Moo;

extends qw/ SemanticWeb::Schema::Vessel /;


use MooX::JSON_LD 'Artery';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.7.0';

=encoding utf8

=head1 DESCRIPTION

A type of blood vessel that specifically carries blood away from the heart.




=head1 ATTRIBUTES


=head2 C<arterial_branch>

C<arterialBranch>

The branches that comprise the arterial structure.


A arterial_branch should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AnatomicalStructure']>

=back

=cut

has arterial_branch => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'arterialBranch',
);


=head2 C<source>



The anatomical or organ system that the artery originates from.


A source should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AnatomicalStructure']>

=back

=cut

has source => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'source',
);


=head2 C<supply_to>

C<supplyTo>

The area to which the artery supplies blood.


A supply_to should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AnatomicalStructure']>

=back

=cut

has supply_to => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'supplyTo',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Vessel>

=cut

1;
