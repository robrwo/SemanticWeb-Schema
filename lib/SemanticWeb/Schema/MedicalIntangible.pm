use utf8;

package SemanticWeb::Schema::MedicalIntangible;

# ABSTRACT: A utility class that serves as the umbrella for a number of 'intangible' things in the medical space.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalEntity /;


use MooX::JSON_LD 'MedicalIntangible';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.0';

=encoding utf8

=head1 DESCRIPTION

A utility class that serves as the umbrella for a number of 'intangible'
things in the medical space.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalEntity>

=cut

1;
