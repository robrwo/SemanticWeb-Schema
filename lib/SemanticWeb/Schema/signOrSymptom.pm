use utf8;

package SemanticWeb::Schema::signOrSymptom;

# ABSTRACT: A sign or symptom of this condition

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'signOrSymptom';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A sign or symptom of this condition. Signs are objective or physically
observable manifestations of the medical condition while symptoms are the
subjective experience of the medical condition.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
