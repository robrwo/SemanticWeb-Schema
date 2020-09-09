use utf8;

package SemanticWeb::Schema::OccupationalTherapy;

# ABSTRACT: A treatment of people with physical

use Moo;

extends qw/ SemanticWeb::Schema::MedicalTherapy /;


use MooX::JSON_LD 'OccupationalTherapy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v10.0.0';

=encoding utf8

=head1 DESCRIPTION

A treatment of people with physical, emotional, or social problems, using
purposeful activity to help them overcome or learn to deal with their
problems.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalTherapy>

=cut

1;
