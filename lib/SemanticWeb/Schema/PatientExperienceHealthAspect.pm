use utf8;

package SemanticWeb::Schema::PatientExperienceHealthAspect;

# ABSTRACT: Content about the real life experience of patients or people that have lived a similar experience about the topic

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'PatientExperienceHealthAspect';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Content about the real life experience of patients or people that have
lived a similar experience about the topic. May be forums, topics, Q-and-A
and related material.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
