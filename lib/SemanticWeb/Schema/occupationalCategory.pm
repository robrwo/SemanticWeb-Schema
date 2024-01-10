use utf8;

package SemanticWeb::Schema::occupationalCategory;

# ABSTRACT: A category describing the job

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'occupationalCategory';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A category describing the job, preferably using a term from a taxonomy such
as [BLS O*NET-SOC](http://www.onetcenter.org/taxonomy.html),
[ISCO-08](https://www.ilo.org/public/english/bureau/stat/isco/isco08/) or
similar, with the property repeated for each applicable value. Ideally the
taxonomy should be identified, and both the textual label and formal code
for the category should be provided. Note: for historical reasons, any
textual label and formal code provided as a literal may be assumed to be
from O*NET-SOC.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
