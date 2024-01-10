use utf8;

package SemanticWeb::Schema::legislationChanges;

# ABSTRACT: Another legislation that this legislation changes

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'legislationChanges';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>Another legislation that this legislation changes. This encompasses the
notions of amendment, replacement, correction, repeal, or other types of
change. This may be a direct change (textual or non-textual amendment) or a
consequential or indirect change. The property is to be used to express the
existence of a change relationship between two acts rather than the
existence of a consolidated version of the text that shows the result of
the change. For consolidation relationships, use the <a
href="/legislationConsolidates">legislationConsolidates</a> property.</p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
