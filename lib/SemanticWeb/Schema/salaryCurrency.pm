use utf8;

package SemanticWeb::Schema::salaryCurrency;

# ABSTRACT: The currency (coded using [ISO 4217](http://en

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'salaryCurrency';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The currency (coded using [ISO
4217](http://en.wikipedia.org/wiki/ISO_4217)) used for the main salary
information in this job posting or for this employee.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
