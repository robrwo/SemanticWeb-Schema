use utf8;

package SemanticWeb::Schema::seriousAdverseOutcome;

# ABSTRACT: A possible serious complication and/or serious side effect of this therapy

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'seriousAdverseOutcome';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A possible serious complication and/or serious side effect of this therapy.
Serious adverse outcomes include those that are life-threatening; result in
death, disability, or permanent damage; require hospitalization or prolong
existing hospitalization; cause congenital anomalies or birth defects; or
jeopardize the patient and may require medical or surgical intervention to
prevent one of the outcomes in this definition.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
