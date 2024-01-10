use utf8;

package SemanticWeb::Schema::CommunityHealth;

# ABSTRACT: A field of public health focusing on improving health characteristics of a defined population in relation with their geographical or environment areas.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalBusiness /;


use MooX::JSON_LD 'CommunityHealth';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A field of public health focusing on improving health characteristics of a
defined population in relation with their geographical or environment
areas.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalBusiness>

=cut

1;
